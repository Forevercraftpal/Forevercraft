import { useState, useEffect, useRef, useCallback } from 'react'
import PageHero from '../components/layout/PageHero'

// Load JSZip dynamically from CDN to avoid build dependency issues
const loadJSZip = async () => {
  if ((window as any).JSZip) return (window as any).JSZip
  return new Promise((resolve, reject) => {
    const script = document.createElement('script')
    script.src = 'https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js'
    script.onload = () => resolve((window as any).JSZip)
    script.onerror = reject
    document.head.appendChild(script)
  })
}
import ScrollReveal from '../components/effects/ScrollReveal'
import { useDownloadTracker } from '../hooks/useDownloadTracker'
import graphData from '../data/module-graph.json'

interface Module {
  id: string
  name: string
  description: string
  tier: number
  category: string
  color: string
  icon: string
  fileCount: number
  fullPackOnly?: boolean
  alwaysIncluded?: boolean
  standaloneCodexName?: string
  standaloneNote?: string
}

interface Edge {
  from: string
  to: string
  type: 'required' | 'optional'
  reason?: string
}

interface NodePosition {
  x: number
  y: number
  vx: number
  vy: number
}

const MODULES: Module[] = graphData.modules as Module[]
const EDGES: Edge[] = graphData.edges as Edge[]

// Simple force simulation
function useForceSimulation(modules: Module[], width: number, height: number) {
  const [positions, setPositions] = useState<Record<string, NodePosition>>({})
  const animRef = useRef<number>(0)
  const posRef = useRef<Record<string, NodePosition>>({})

  useEffect(() => {
    if (width === 0 || height === 0) return

    const cx = width / 2
    const cy = height / 2

    // Initialize positions in concentric rings by tier
    const initial: Record<string, NodePosition> = {}
    const tierGroups: Record<number, Module[]> = {}
    for (const m of modules) {
      if (!tierGroups[m.tier]) tierGroups[m.tier] = []
      tierGroups[m.tier].push(m)
    }

    for (const [tier, mods] of Object.entries(tierGroups)) {
      const t = parseInt(tier)
      const radius = t === 0 ? 0 : 80 + t * 100
      mods.forEach((m, i) => {
        const angle = (i / mods.length) * Math.PI * 2 - Math.PI / 2
        initial[m.id] = {
          x: cx + radius * Math.cos(angle) + (Math.random() - 0.5) * 30,
          y: cy + radius * Math.sin(angle) + (Math.random() - 0.5) * 30,
          vx: 0, vy: 0
        }
      })
    }

    posRef.current = initial
    setPositions({ ...initial })

    // Run simulation
    let tick = 0
    const maxTicks = 200
    const alpha = () => Math.max(0.01, 1 - tick / maxTicks)

    function simulate() {
      if (tick >= maxTicks) return

      const pos = posRef.current
      const a = alpha()

      // Center gravity
      for (const id of Object.keys(pos)) {
        pos[id].vx += (cx - pos[id].x) * 0.005 * a
        pos[id].vy += (cy - pos[id].y) * 0.005 * a
      }

      // Repulsion between all nodes
      const ids = Object.keys(pos)
      for (let i = 0; i < ids.length; i++) {
        for (let j = i + 1; j < ids.length; j++) {
          const a1 = pos[ids[i]], b1 = pos[ids[j]]
          const dx = b1.x - a1.x
          const dy = b1.y - a1.y
          const dist = Math.max(1, Math.sqrt(dx * dx + dy * dy))
          const force = 3000 * a / (dist * dist)
          const fx = (dx / dist) * force
          const fy = (dy / dist) * force
          a1.vx -= fx
          a1.vy -= fy
          b1.vx += fx
          b1.vy += fy
        }
      }

      // Edge attraction (spring force)
      for (const edge of EDGES) {
        const s = pos[edge.from]
        const t = pos[edge.to]
        if (!s || !t) continue
        const dx = t.x - s.x
        const dy = t.y - s.y
        const dist = Math.max(1, Math.sqrt(dx * dx + dy * dy))
        const targetDist = edge.type === 'required' ? 150 : 200
        const force = (dist - targetDist) * 0.003 * a
        const fx = (dx / dist) * force
        const fy = (dy / dist) * force
        s.vx += fx
        s.vy += fy
        t.vx -= fx
        t.vy -= fy
      }

      // Apply velocity + damping
      for (const id of Object.keys(pos)) {
        pos[id].vx *= 0.85
        pos[id].vy *= 0.85
        pos[id].x += pos[id].vx
        pos[id].y += pos[id].vy
        // Bounds
        pos[id].x = Math.max(60, Math.min(width - 60, pos[id].x))
        pos[id].y = Math.max(60, Math.min(height - 60, pos[id].y))
      }

      tick++
      setPositions({ ...pos })
      animRef.current = requestAnimationFrame(simulate)
    }

    animRef.current = requestAnimationFrame(simulate)
    return () => cancelAnimationFrame(animRef.current)
  }, [modules, width, height])

  return positions
}

function resolveRequired(selected: Set<string>): Set<string> {
  const resolved = new Set<string>(['core'])
  const queue = [...selected, 'core']
  while (queue.length) {
    const current = queue.pop()!
    if (resolved.has(current) && current !== 'core') continue
    resolved.add(current)
    for (const edge of EDGES) {
      if (edge.from === current && edge.type === 'required' && !resolved.has(edge.to)) {
        queue.push(edge.to)
      }
    }
  }
  // Remove full-pack-only modules
  for (const m of MODULES) {
    if (m.fullPackOnly && resolved.has(m.id) && !selected.has(m.id)) {
      resolved.delete(m.id)
    }
  }
  return resolved
}

export default function Downloads() {
  const { counts, trackDownload } = useDownloadTracker()
  const [selected, setSelected] = useState<Set<string>>(new Set(['core']))
  const [hovered, setHovered] = useState<string | null>(null)
  const [building, setBuilding] = useState(false)
  const [platform, setPlatform] = useState<'java' | 'bedrock'>('java')
  const containerRef = useRef<HTMLDivElement>(null)
  const [dimensions, setDimensions] = useState({ width: 0, height: 0 })

  useEffect(() => {
    const el = containerRef.current
    if (!el) return
    const obs = new ResizeObserver(([entry]) => {
      setDimensions({
        width: entry.contentRect.width,
        height: Math.max(600, entry.contentRect.width * 0.65)
      })
    })
    obs.observe(el)
    return () => obs.disconnect()
  }, [])

  const positions = useForceSimulation(MODULES, dimensions.width, dimensions.height)

  const resolved = resolveRequired(selected)
  const totalFiles = MODULES.filter(m => resolved.has(m.id)).reduce((sum, m) => sum + m.fileCount, 0)

  const toggleModule = useCallback((id: string) => {
    const mod = MODULES.find(m => m.id === id)
    if (!mod || mod.alwaysIncluded || mod.fullPackOnly) return

    setSelected(prev => {
      const next = new Set(prev)
      if (next.has(id)) {
        next.delete(id)
      } else {
        next.add(id)
      }
      return next
    })
  }, [])

  const selectAll = () => {
    const all = new Set(MODULES.filter(m => !m.fullPackOnly).map(m => m.id))
    setSelected(all)
  }

  const selectNone = () => {
    setSelected(new Set(['core']))
  }

  const [buildResult, setBuildResult] = useState<{status: string, message?: string, downloadUrl?: string} | null>(null)

  const buildCustom = async () => {
    setBuilding(true)
    setBuildResult(null)
    try {
      const JSZip = await loadJSZip() as any
      // Client-side build: download each module ZIP and merge them
      const moduleIds = [...resolved]
      const totalMods = moduleIds.length
      let loaded = 0

      // Download all module ZIPs in parallel
      const moduleZips = await Promise.all(
        moduleIds.map(async (modId) => {
          const modulePath = platform === 'bedrock' ? `/modules/bedrock/${modId}.zip` : `/modules/${modId}.zip`
          const resp = await fetch(modulePath)
          if (!resp.ok) throw new Error(`Failed to fetch module: ${modId}`)
          const blob = await resp.blob()
          loaded++
          setBuildResult({ status: 'building', message: `Downloading modules... ${loaded}/${totalMods}` })
          return { id: modId, zip: await JSZip.loadAsync(blob) }
        })
      )

      setBuildResult({ status: 'building', message: 'Assembling datapack...' })

      // Merge all ZIPs into one
      const output = new JSZip()

      // Track fragment contributions per fragment file
      const fragmentMap: Record<string, string[]> = {}

      for (const { zip } of moduleZips) {
        for (const [path, file] of Object.entries(zip.files) as [string, any][]) {
          if (file.dir) continue

          if (path.startsWith('_fragments/')) {
            const fragName = path.replace('_fragments/', '').replace('.txt', '')
            const content = await file.async('text')
            if (!fragmentMap[fragName]) fragmentMap[fragName] = []
            fragmentMap[fragName].push(content)
          } else {
            if (!output.files[path]) {
              output.file(path, await file.async('uint8array'))
            }
          }
        }
      }

      // Assemble fragments into their target files
      // Fragment names encode the target path: e.g. "tick" → data/evercraft/function/tick.mcfunction
      const FRAG_TARGETS: Record<string, string> = {
        'tick': 'data/evercraft/function/tick.mcfunction',
        'init': 'data/evercraft/function/init.mcfunction',
        'on_join': 'data/evercraft/function/on_join.mcfunction',
        'on_respawn': 'data/evercraft/function/on_respawn.mcfunction',
        'on_death': 'data/evercraft/function/on_death.mcfunction',
      }

      for (const [fragName, lineArrays] of Object.entries(fragmentMap)) {
        const target = FRAG_TARGETS[fragName]
        if (target) {
          const header = `# Forevercraft — Auto-assembled from ${moduleIds.length} modules\n# Modules: ${moduleIds.join(', ')}\n\n`
          const combined = header + lineArrays.join('\n\n')
          output.file(target, combined)
        }
      }

      // Add pack.mcmeta (platform-aware)
      output.file('pack.mcmeta', JSON.stringify(platform === 'bedrock'
        ? { pack: { description: `Forevercraft Custom (${moduleIds.length} modules)`, pack_format: 2, header_uuid: crypto.randomUUID(), modules_uuid: crypto.randomUUID(), min_engine_version: [1, 21, 60] } }
        : { pack: { description: `Forevercraft Custom (${moduleIds.length} modules)`, min_format: [101, 1], max_format: [101, 1] } }
      , null, 2))

      // Add minecraft tick/load tags
      output.file('data/minecraft/tags/function/tick.json', JSON.stringify({
        values: ['evercraft:tick']
      }, null, 2))
      output.file('data/minecraft/tags/function/load.json', JSON.stringify({
        values: ['evercraft:init']
      }, null, 2))

      setBuildResult({ status: 'building', message: 'Compressing...' })

      // Generate final ZIP
      const blob = await output.generateAsync({ type: 'blob', compression: 'DEFLATE', compressionOptions: { level: 6 } })

      // Trigger download
      const url = URL.createObjectURL(blob)
      const link = document.createElement('a')
      link.href = url
      const ext = platform === 'bedrock' ? '.mcaddon' : '.zip'
      link.download = `Forevercraft-${platform === 'bedrock' ? 'Bedrock' : 'Java'}-Custom-${moduleIds.length}mod${ext}`
      document.body.appendChild(link)
      link.click()
      document.body.removeChild(link)
      URL.revokeObjectURL(url)

      const sizeMB = (blob.size / 1024 / 1024).toFixed(1)
      setBuildResult({
        status: 'success',
        message: `Downloaded! ${moduleIds.length} modules, ${totalFiles.toLocaleString()} files (${sizeMB} MB)`
      })
    } catch (err) {
      setBuildResult({ status: 'error', message: `Build failed: ${err instanceof Error ? err.message : 'Unknown error'}` })
    } finally {
      setBuilding(false)
    }
  }

  const getNodeRadius = (m: Module) => {
    return 18 + Math.min(m.fileCount / 200, 18)
  }

  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="DOWNLOADS"
        badge="BUILD YOUR PACK"
        subtitle="Select the systems you want. The builder assembles a custom datapack — nothing breaks."
        particleColor="rgba(251, 191, 36, 0.3)"
      />

      <div className="max-w-[1400px] mx-auto px-8 py-12">
        {/* Java Edition Download */}
        <ScrollReveal>
          <div className="rounded-lg border border-yellow-800/40 bg-gradient-to-r from-yellow-900/15 to-transparent p-8 mb-6">
            <div className="flex flex-col items-center text-center gap-4">
              <div className="flex items-center gap-3">
                <h2 className="font-['Press_Start_2P'] text-[0.9rem] text-yellow-400">JAVA EDITION</h2>
                <span className="font-['Press_Start_2P'] text-[0.5rem] text-yellow-700 border border-yellow-800/40 rounded px-2 py-1">v1.0</span>
              </div>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl">
                All 138 systems. 23,639 files. The complete experience including Companions, Mining Crates, and everything else.
              </p>
              <a
                href="/builds/Forevercraft-Java-26.1.zip"
                download
                onClick={() => trackDownload('java')}
                className="inline-block px-10 py-4 rounded-lg bg-yellow-600 hover:bg-yellow-500 text-stone-950 font-['Press_Start_2P'] text-[0.8rem] transition-colors no-underline mt-2"
              >
                DOWNLOAD JAVA 26.1
              </a>
              <p className="font-['Press_Start_2P'] text-[0.45rem] text-yellow-700 mt-2">Pack Format 101.1</p>
              {counts.java ? <p className="font-['Crimson_Pro'] text-[0.85rem] text-stone-600 mt-1">{counts.java.toLocaleString()} downloads</p> : null}
            </div>
          </div>
        </ScrollReveal>

        {/* Bedrock Edition Downloads */}
        <ScrollReveal delay={100}>
          <div className="rounded-lg border border-cyan-800/40 bg-gradient-to-r from-cyan-900/15 to-transparent p-8 mb-12">
            <div className="flex flex-col items-center text-center gap-4">
              <div className="flex items-center gap-3">
                <h2 className="font-['Press_Start_2P'] text-[0.9rem] text-cyan-400">BEDROCK EDITION</h2>
                <span className="font-['Press_Start_2P'] text-[0.5rem] text-cyan-700 border border-cyan-800/40 rounded px-2 py-1">v1.0</span>
              </div>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl">
                138 systems. Full Java parity. Script API powered. Console, mobile, and PC.
              </p>
              <a
                href="/builds/Forevercraft-Bedrock-26.10.mcaddon"
                download
                onClick={() => trackDownload('bedrock-mcaddon')}
                className="inline-block px-10 py-4 rounded-lg bg-cyan-600 hover:bg-cyan-500 text-stone-950 font-['Press_Start_2P'] text-[0.8rem] transition-colors no-underline mt-2"
              >
                DOWNLOAD BEDROCK 26.10
              </a>
              <p className="font-['Press_Start_2P'] text-[0.45rem] text-cyan-700 mt-2">Script API 2.6.0</p>
              {counts['bedrock-mcaddon'] ? <p className="font-['Crimson_Pro'] text-[0.85rem] text-stone-600 mt-1">{counts['bedrock-mcaddon'].toLocaleString()} downloads</p> : null}
            </div>
          </div>
        </ScrollReveal>

        {/* Resource Packs Section */}
        <ScrollReveal>
          <div className="rounded-lg border border-purple-800/40 bg-purple-950/10 hover:bg-purple-950/20 p-8 mb-6 transition-colors">
            <div className="flex flex-col md:flex-row items-center justify-between gap-6">
              <div>
                <span className="font-['Press_Start_2P'] text-[0.55rem] text-purple-600 tracking-widest">TOODLE PACK</span>
                <h3 className="font-['Press_Start_2P'] text-[0.9rem] text-purple-400 mt-2 mb-2">RESOURCE PACKS</h3>
                <p className="font-['Crimson_Pro'] text-lg text-stone-400">
                  Seasonal texture overhaul — animated client-side cycling or individual packs for server-side season swapping.
                  6 packs available plus a full server setup guide.
                </p>
              </div>
              <a
                href="/resource-packs"
                className="inline-block px-8 py-3 rounded-lg bg-purple-700 hover:bg-purple-600 text-stone-100 font-['Press_Start_2P'] text-[0.65rem] transition-colors no-underline shrink-0"
              >
                VIEW PACKS
              </a>
            </div>
          </div>
        </ScrollReveal>

        {/* Custom Builder Section */}
        <ScrollReveal>
          <div className="text-center mb-8">
            <h2 className="font-['Press_Start_2P'] text-[0.9rem] text-yellow-400 mb-3">CUSTOM BUILDER</h2>
            <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
              Click modules in the web to toggle them. Required dependencies auto-include.
              Dashed lines show optional connections. The builder generates stubs for missing systems — nothing breaks.
            </p>

            {/* Platform Toggle */}
            <div className="flex items-center justify-center gap-1 mt-6 bg-stone-900/60 rounded-lg p-1 max-w-xs mx-auto border border-stone-800">
              <button
                onClick={() => setPlatform('java')}
                className={`flex-1 px-4 py-2 rounded-md font-['Press_Start_2P'] text-[0.55rem] transition-all ${
                  platform === 'java'
                    ? 'bg-yellow-600 text-stone-950'
                    : 'text-stone-500 hover:text-stone-300'
                }`}
              >
                JAVA
              </button>
              <button
                onClick={() => setPlatform('bedrock')}
                className={`flex-1 px-4 py-2 rounded-md font-['Press_Start_2P'] text-[0.55rem] transition-all ${
                  platform === 'bedrock'
                    ? 'bg-cyan-600 text-stone-950'
                    : 'text-stone-500 hover:text-stone-300'
                }`}
              >
                BEDROCK
              </button>
            </div>
          </div>
        </ScrollReveal>

        {/* Controls */}
        <div className="flex flex-wrap items-center justify-between gap-4 mb-6">
          <div className="flex gap-3">
            <button onClick={selectAll} className="px-4 py-2 rounded border border-stone-700 bg-stone-900/50 hover:bg-stone-800/50 font-['Crimson_Pro'] text-base text-stone-400 transition-colors">
              Select All
            </button>
            <button onClick={selectNone} className="px-4 py-2 rounded border border-stone-700 bg-stone-900/50 hover:bg-stone-800/50 font-['Crimson_Pro'] text-base text-stone-400 transition-colors">
              Core Only
            </button>
          </div>
          <div className="flex items-center gap-6">
            <div className="text-right">
              <div className="font-['Press_Start_2P'] text-[0.65rem] text-stone-500">MODULES</div>
              <div className="font-['Press_Start_2P'] text-[0.9rem] text-yellow-400">{resolved.size}</div>
            </div>
            <div className="text-right">
              <div className="font-['Press_Start_2P'] text-[0.65rem] text-stone-500">FILES</div>
              <div className="font-['Press_Start_2P'] text-[0.9rem] text-yellow-400">{totalFiles.toLocaleString()}</div>
            </div>
            <button
              onClick={buildCustom}
              disabled={building}
              className={`px-6 py-3 rounded-lg disabled:bg-stone-700 text-stone-950 disabled:text-stone-400 font-['Press_Start_2P'] text-[0.65rem] transition-colors ${
                platform === 'bedrock' ? 'bg-cyan-600 hover:bg-cyan-500' : 'bg-green-600 hover:bg-green-500'
              }`}
            >
              {building ? 'BUILDING...' : `BUILD ${platform === 'bedrock' ? 'BEDROCK' : 'JAVA'} PACK`}
            </button>
          </div>
        </div>

        {/* Build Result */}
        {buildResult && (
          <div className={`mb-6 rounded-lg border p-4 ${
            buildResult.status === 'success' ? 'border-green-800/40 bg-green-900/15' :
            buildResult.status === 'error' ? 'border-red-800/40 bg-red-900/15' :
            buildResult.status === 'building' ? 'border-blue-800/40 bg-blue-900/15' :
            'border-yellow-800/40 bg-yellow-900/15'
          }`}>
            <div className="flex items-center gap-3">
              {buildResult.status === 'building' && (
                <div className="w-5 h-5 border-2 border-blue-400 border-t-transparent rounded-full animate-spin shrink-0" />
              )}
              {buildResult.status === 'success' && (
                <span className="text-green-400 text-xl shrink-0">&#10003;</span>
              )}
              {buildResult.status === 'error' && (
                <span className="text-red-400 text-xl shrink-0">&#10007;</span>
              )}
              <p className="font-['Crimson_Pro'] text-base text-stone-300">{buildResult.message}</p>
            </div>
          </div>
        )}

        {/* Interactive Graph */}
        <div
          ref={containerRef}
          className="rounded-lg border border-stone-800 bg-stone-900/30 overflow-hidden relative"
          style={{ height: dimensions.height || 600 }}
        >
          <svg width={dimensions.width} height={dimensions.height} className="w-full h-full">
            {/* Background grid */}
            <defs>
              <pattern id="grid" width="40" height="40" patternUnits="userSpaceOnUse">
                <path d="M 40 0 L 0 0 0 40" fill="none" stroke="rgba(255,255,255,0.03)" strokeWidth="1"/>
              </pattern>
              <filter id="glow">
                <feGaussianBlur stdDeviation="4" result="blur"/>
                <feMerge><feMergeNode in="blur"/><feMergeNode in="SourceGraphic"/></feMerge>
              </filter>
            </defs>
            <rect width="100%" height="100%" fill="url(#grid)" />

            {/* Edges */}
            {EDGES.map((edge, i) => {
              const s = positions[edge.from]
              const t = positions[edge.to]
              if (!s || !t) return null

              const isActive = resolved.has(edge.from) && resolved.has(edge.to)
              const isHovered = hovered === edge.from || hovered === edge.to

              return (
                <line
                  key={i}
                  x1={s.x} y1={s.y}
                  x2={t.x} y2={t.y}
                  stroke={isActive ? (edge.type === 'required' ? 'rgba(251,191,36,0.4)' : 'rgba(251,191,36,0.15)') : 'rgba(255,255,255,0.05)'}
                  strokeWidth={isHovered ? 2.5 : 1.5}
                  strokeDasharray={edge.type === 'optional' ? '6,4' : undefined}
                  style={{ transition: 'stroke 0.3s, stroke-width 0.2s' }}
                />
              )
            })}

            {/* Nodes */}
            {MODULES.map(m => {
              const pos = positions[m.id]
              if (!pos) return null

              const isSelected = resolved.has(m.id)
              const isAutoIncluded = isSelected && !selected.has(m.id) && m.id !== 'core'
              const isHov = hovered === m.id
              const r = getNodeRadius(m)

              return (
                <g
                  key={m.id}
                  onClick={() => toggleModule(m.id)}
                  onMouseEnter={() => setHovered(m.id)}
                  onMouseLeave={() => setHovered(null)}
                  style={{ cursor: m.alwaysIncluded || m.fullPackOnly ? 'default' : 'pointer' }}
                >
                  {/* Glow ring for selected */}
                  {isSelected && (
                    <circle
                      cx={pos.x} cy={pos.y} r={r + 6}
                      fill="none"
                      stroke={m.color}
                      strokeWidth={1.5}
                      opacity={0.4}
                      filter="url(#glow)"
                    />
                  )}

                  {/* Main circle */}
                  <circle
                    cx={pos.x} cy={pos.y} r={r}
                    fill={isSelected ? m.color + '30' : 'rgba(30,30,30,0.8)'}
                    stroke={isSelected ? m.color : 'rgba(255,255,255,0.1)'}
                    strokeWidth={isHov ? 3 : isSelected ? 2 : 1}
                    style={{ transition: 'fill 0.3s, stroke 0.3s, stroke-width 0.2s' }}
                  />

                  {/* Auto-included badge */}
                  {isAutoIncluded && (
                    <text x={pos.x + r - 2} y={pos.y - r + 4} fontSize="10" fill={m.color} textAnchor="middle" fontWeight="bold">
                      ⟡
                    </text>
                  )}

                  {/* Full-pack-only lock */}
                  {m.fullPackOnly && (
                    <text x={pos.x + r - 2} y={pos.y - r + 4} fontSize="10" fill="#EF4444" textAnchor="middle">
                      🔒
                    </text>
                  )}

                  {/* Icon */}
                  <text x={pos.x} y={pos.y + 1} fontSize="16" textAnchor="middle" dominantBaseline="middle">
                    {m.icon}
                  </text>

                  {/* Label */}
                  <text
                    x={pos.x} y={pos.y + r + 14}
                    fontSize="10"
                    fill={isSelected ? m.color : 'rgba(255,255,255,0.3)'}
                    textAnchor="middle"
                    fontFamily="'Press Start 2P'"
                    style={{ transition: 'fill 0.3s', pointerEvents: 'none' }}
                  >
                    {m.name.length > 14 ? m.name.substring(0, 12) + '..' : m.name}
                  </text>
                </g>
              )
            })}
          </svg>

          {/* Hover tooltip */}
          {hovered && (() => {
            const m = MODULES.find(mod => mod.id === hovered)
            const pos = positions[hovered]
            if (!m || !pos) return null

            const deps = EDGES.filter(e => e.from === m.id && e.type === 'required').map(e => e.to)
            const optDeps = EDGES.filter(e => e.from === m.id && e.type === 'optional')

            return (
              <div
                className="absolute pointer-events-none bg-stone-900/95 border border-stone-700 rounded-lg p-4 max-w-xs shadow-xl backdrop-blur-sm z-10"
                style={{
                  left: Math.min(pos.x + 20, dimensions.width - 280),
                  top: Math.min(pos.y - 20, dimensions.height - 200)
                }}
              >
                <div className="flex items-center gap-2 mb-2">
                  <span className="text-lg">{m.icon}</span>
                  <span className="font-['Press_Start_2P'] text-[0.65rem]" style={{ color: m.color }}>{m.name}</span>
                </div>
                <p className="font-['Crimson_Pro'] text-sm text-stone-400 mb-2">{m.description}</p>
                <div className="flex gap-4 text-xs text-stone-500">
                  <span>~{m.fileCount.toLocaleString()} files</span>
                  <span>Tier {m.tier}</span>
                </div>
                {m.fullPackOnly && (
                  <p className="font-['Crimson_Pro'] text-xs text-red-400 mt-2">🔒 Full pack only — not available standalone</p>
                )}
                {m.standaloneCodexName && (
                  <p className="font-['Crimson_Pro'] text-xs text-yellow-400/70 mt-1">Standalone codex: "{m.standaloneCodexName}"</p>
                )}
                {deps.length > 0 && (
                  <p className="font-['Crimson_Pro'] text-xs text-stone-500 mt-2">Requires: {deps.join(', ')}</p>
                )}
                {optDeps.length > 0 && (
                  <div className="mt-1">
                    {optDeps.map((e, i) => (
                      <p key={i} className="font-['Crimson_Pro'] text-xs text-stone-600">
                        Optional: {e.to} — {e.reason}
                      </p>
                    ))}
                  </div>
                )}
              </div>
            )
          })()}
        </div>

        {/* Legend */}
        <div className="mt-6 flex flex-wrap gap-6 justify-center">
          <div className="flex items-center gap-2">
            <div className="w-4 h-0.5 bg-yellow-500/60" />
            <span className="font-['Crimson_Pro'] text-sm text-stone-500">Required dependency</span>
          </div>
          <div className="flex items-center gap-2">
            <div className="w-4 h-0.5 border-t border-dashed border-yellow-500/30" />
            <span className="font-['Crimson_Pro'] text-sm text-stone-500">Optional dependency</span>
          </div>
          <div className="flex items-center gap-2">
            <span className="text-xs">⟡</span>
            <span className="font-['Crimson_Pro'] text-sm text-stone-500">Auto-included (required by selection)</span>
          </div>
          <div className="flex items-center gap-2">
            <span className="text-xs">🔒</span>
            <span className="font-['Crimson_Pro'] text-sm text-stone-500">Full pack only</span>
          </div>
        </div>

        {/* Selected modules panel */}
        <ScrollReveal>
          <div className="mt-12 rounded-lg border border-stone-800 bg-stone-900/30 p-6">
            <h3 className="font-['Press_Start_2P'] text-[0.75rem] text-yellow-400 mb-4">SELECTED MODULES ({resolved.size})</h3>
            <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-3">
              {MODULES.filter(m => resolved.has(m.id)).map(m => (
                <div
                  key={m.id}
                  className="flex items-center gap-2 rounded border border-stone-800 bg-stone-900/50 px-3 py-2"
                  style={{ borderColor: m.color + '30' }}
                >
                  <span className="text-sm">{m.icon}</span>
                  <span className="font-['Crimson_Pro'] text-sm" style={{ color: m.color }}>{m.name}</span>
                  {!selected.has(m.id) && m.id !== 'core' && (
                    <span className="font-['Crimson_Pro'] text-xs text-stone-600 ml-auto">auto</span>
                  )}
                </div>
              ))}
            </div>
          </div>
        </ScrollReveal>

        {/* Warnings */}
        {(() => {
          const warnings = EDGES.filter(e =>
            resolved.has(e.from) && !resolved.has(e.to) && e.type === 'optional'
          )
          if (warnings.length === 0) return null
          return (
            <ScrollReveal>
              <div className="mt-6 rounded-lg border border-yellow-800/30 bg-yellow-900/10 p-5">
                <h3 className="font-['Press_Start_2P'] text-[0.65rem] text-yellow-600 mb-3">OPTIONAL DEPENDENCIES NOT INCLUDED</h3>
                <div className="space-y-1.5">
                  {warnings.map((w, i) => (
                    <p key={i} className="font-['Crimson_Pro'] text-sm text-stone-400">
                      <span style={{ color: MODULES.find(m => m.id === w.from)?.color }}>{w.from}</span>
                      {' → '}
                      <span className="text-stone-500">{w.to}</span>
                      {w.reason && <span className="text-stone-600"> — {w.reason}</span>}
                      <span className="text-stone-600 italic"> (will be stubbed)</span>
                    </p>
                  ))}
                </div>
              </div>
            </ScrollReveal>
          )
        })()}
      </div>
    </div>
  )
}
