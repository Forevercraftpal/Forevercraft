import { useState, useEffect, useRef, useCallback } from 'react'
import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'
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
  const [selected, setSelected] = useState<Set<string>>(new Set(['core']))
  const [hovered, setHovered] = useState<string | null>(null)
  const [building, setBuilding] = useState(false)
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

  const downloadFull = () => {
    // For now, link to GitHub release
    window.open('https://github.com/Deiontre10/forevercraft/releases', '_blank')
  }

  const [buildResult, setBuildResult] = useState<{status: string, message?: string, downloadUrl?: string} | null>(null)

  const buildCustom = async () => {
    setBuilding(true)
    setBuildResult(null)
    try {
      const response = await fetch('/api/build', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ modules: [...selected] })
      })
      const data = await response.json()

      if (data.status === 'ready' && data.downloadUrl) {
        // Pre-built combo available — trigger download
        const link = document.createElement('a')
        link.href = data.downloadUrl
        link.download = data.filename || 'Forevercraft-Custom.zip'
        document.body.appendChild(link)
        link.click()
        document.body.removeChild(link)
        setBuildResult({ status: 'success', message: `✅ Downloading ${data.filename || 'Forevercraft'}! ${data.resolved?.length} modules, ~${data.totalFiles?.toLocaleString()} files.` })
      } else if (response.ok && data.status === 'not_cached') {
        // Custom combo not cached — show build command
        setBuildResult({
          status: 'manual',
          message: `Custom build with ${data.resolved?.length || resolved.size} modules (${data.totalFiles?.toLocaleString() || totalFiles.toLocaleString()} files). Run locally:`,
          downloadUrl: data.buildCommand
        })
      } else {
        setBuildResult({ status: 'error', message: data.error || 'Build failed' })
      }
    } catch {
      // API not available — try direct pre-built download as fallback
      const hash = [...resolved].sort().join('+')
      const FALLBACK_BUILDS: Record<string, string> = {
        'core': '/builds/core.zip',
        'cooking+core': '/builds/cooking.zip',
        'core+housing': '/builds/housing.zip',
        'core+guilds': '/builds/guilds.zip',
        'advantage+core': '/builds/advantage.zip',
        'bestiary+core': '/builds/bestiary.zip',
        'core+lore': '/builds/lore.zip',
        'core+cosmetics': '/builds/cosmetics.zip',
        'core+milestones': '/builds/milestones.zip',
        'artifacts+classes+combat-instances+core+crates+dream-rate+mastery': '/builds/combat-bundle.zip',
        'core+crates+guidestones+lore+professions+world-systems': '/builds/exploration-bundle.zip',
        'buddy-system+core+guilds+social': '/builds/social-bundle.zip',
      }

      if (FALLBACK_BUILDS[hash]) {
        const link = document.createElement('a')
        link.href = FALLBACK_BUILDS[hash]
        link.download = 'Forevercraft-Custom.zip'
        document.body.appendChild(link)
        link.click()
        document.body.removeChild(link)
        setBuildResult({ status: 'success', message: `✅ Downloading pre-built pack! ${resolved.size} modules.` })
      } else {
        const moduleList = [...resolved].join(',')
        setBuildResult({
          status: 'manual',
          message: `This exact combo isn't pre-built yet. Clone the repo and run locally:`,
          downloadUrl: `python3 build/scripts/build.py --modules ${moduleList} --output ./Forevercraft`
        })
      }
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
        {/* Full Pack Download */}
        <ScrollReveal>
          <div className="rounded-lg border border-yellow-800/40 bg-gradient-to-r from-yellow-900/15 to-transparent p-8 mb-12">
            <div className="flex flex-col md:flex-row items-center justify-between gap-6">
              <div>
                <h2 className="font-['Press_Start_2P'] text-[0.9rem] text-yellow-400 mb-2">FULL FOREVERCRAFT</h2>
                <p className="font-['Crimson_Pro'] text-lg text-stone-400">
                  All 102 systems. 18,111 files. The complete experience including Companions, Mining Crates, and everything else.
                </p>
              </div>
              <button
                onClick={downloadFull}
                className="shrink-0 px-8 py-3 rounded-lg bg-yellow-600 hover:bg-yellow-500 text-stone-950 font-['Press_Start_2P'] text-[0.7rem] transition-colors"
              >
                DOWNLOAD FULL PACK
              </button>
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
              className="px-6 py-3 rounded-lg bg-green-600 hover:bg-green-500 disabled:bg-stone-700 text-stone-950 disabled:text-stone-400 font-['Press_Start_2P'] text-[0.65rem] transition-colors"
            >
              {building ? 'BUILDING...' : 'BUILD MY PACK'}
            </button>
          </div>
        </div>

        {/* Build Result */}
        {buildResult && (
          <div className={`mb-6 rounded-lg border p-4 ${
            buildResult.status === 'success' ? 'border-green-800/40 bg-green-900/15' :
            buildResult.status === 'error' ? 'border-red-800/40 bg-red-900/15' :
            'border-yellow-800/40 bg-yellow-900/15'
          }`}>
            <p className="font-['Crimson_Pro'] text-base text-stone-300 mb-2">{buildResult.message}</p>
            {buildResult.downloadUrl && buildResult.status === 'manual' && (
              <code className="block bg-stone-900 rounded p-3 text-sm text-green-400 font-mono overflow-x-auto">
                {buildResult.downloadUrl}
              </code>
            )}
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
