/**
 * Forevercraft Modular Build API
 * Cloudflare Pages Function
 *
 * POST /api/build
 * Body: { modules: ["core", "cooking", "housing"] }
 * Response: JSON with download URL or build status
 *
 * Architecture:
 * - Reads module graph from static data
 * - Resolves dependencies
 * - For pre-built combos: returns cached ZIP URL from R2
 * - For custom combos: triggers async build or returns instructions
 */

interface Env {
  DATAPACK_BUCKET?: R2Bucket
}

interface BuildRequest {
  modules: string[]
}

// Inline module graph for dependency resolution
import graphData from '../../src/data/module-graph.json'

const MODULES = graphData.modules
const EDGES = graphData.edges

function resolveRequired(selected: string[]): string[] {
  const resolved = new Set<string>(['core'])
  const queue = [...selected, 'core']

  while (queue.length) {
    const current = queue.pop()!
    if (resolved.has(current)) continue
    resolved.add(current)

    for (const edge of EDGES) {
      if (edge.from === current && edge.type === 'required' && !resolved.has(edge.to)) {
        queue.push(edge.to)
      }
    }
  }

  // Remove full-pack-only modules
  for (const m of MODULES) {
    if ((m as any).fullPackOnly && resolved.has(m.id) && !selected.includes(m.id)) {
      resolved.delete(m.id)
    }
  }

  return [...resolved].sort()
}

function getComboHash(modules: string[]): string {
  return modules.sort().join('+')
}

// Pre-built combo mapping (sorted module hash → static file path)
const PRE_BUILT: Record<string, { url: string, name: string }> = {
  'core': { url: '/builds/core.zip', name: 'Forevercraft-Core' },
  'cooking+core': { url: '/builds/cooking.zip', name: 'Forevercraft-Cooking' },
  'core+housing': { url: '/builds/housing.zip', name: 'Forevercraft-Housing' },
  'core+guilds': { url: '/builds/guilds.zip', name: 'Forevercraft-Guilds' },
  'advantage+core': { url: '/builds/advantage.zip', name: 'Forevercraft-Advantage-Trees' },
  'bestiary+core': { url: '/builds/bestiary.zip', name: 'Forevercraft-Bestiary' },
  'core+lore': { url: '/builds/lore.zip', name: 'Forevercraft-Lore' },
  'core+cosmetics': { url: '/builds/cosmetics.zip', name: 'Forevercraft-Cosmetics' },
  'core+milestones': { url: '/builds/milestones.zip', name: 'Forevercraft-Milestones' },
  'artifacts+classes+combat-instances+core+crates+dream-rate+mastery': { url: '/builds/combat-bundle.zip', name: 'Forevercraft-Combat-Bundle' },
  'core+crates+guidestones+lore+professions+world-systems': { url: '/builds/exploration-bundle.zip', name: 'Forevercraft-Exploration-Bundle' },
  'buddy-system+core+guilds+social': { url: '/builds/social-bundle.zip', name: 'Forevercraft-Social-Bundle' },
  'advantage+artifacts+bestiary+black-market+buddy-system+classes+combat-instances+cooking+core+cosmetics+craftforever+crates+dream-rate+dreaming-realm+gacha+guidestones+guilds+housing+lore+mastery+milestones+professions+quests+social+spirit-weapons+world-systems': { url: '/builds/full-customizable.zip', name: 'Forevercraft-Full-Customizable' },
}

export const onRequestPost: PagesFunction<Env> = async (context) => {
  try {
    const body = await context.request.json() as BuildRequest

    if (!body.modules || !Array.isArray(body.modules)) {
      return new Response(JSON.stringify({ error: 'Missing modules array' }), {
        status: 400,
        headers: { 'Content-Type': 'application/json' }
      })
    }

    // Resolve dependencies
    const resolved = resolveRequired(body.modules)
    const hash = getComboHash(resolved)

    // Calculate stats
    const totalFiles = MODULES
      .filter(m => resolved.includes(m.id))
      .reduce((sum, m) => sum + m.fileCount, 0)

    // Check for optional dependency warnings
    const warnings = EDGES
      .filter(e => resolved.includes(e.from) && !resolved.includes(e.to) && e.type === 'optional')
      .map(e => ({
        module: e.from,
        missing: e.to,
        reason: (e as any).reason || 'integration feature'
      }))

    // Check for pre-built combo
    const preBuilt = PRE_BUILT[hash]
    if (preBuilt) {
      return new Response(JSON.stringify({
        status: 'ready',
        downloadUrl: preBuilt.url,
        filename: preBuilt.name + '.zip',
        resolved,
        totalFiles,
        warnings,
        cached: true
      }), {
        headers: { 'Content-Type': 'application/json' }
      })
    }

    // Check R2 cache
    if (context.env.DATAPACK_BUCKET) {
      const cached = await context.env.DATAPACK_BUCKET.get(`builds/${hash}.zip`)
      if (cached) {
        return new Response(cached.body, {
          headers: {
            'Content-Type': 'application/zip',
            'Content-Disposition': `attachment; filename="Forevercraft-Custom.zip"`,
            'Cache-Control': 'public, max-age=86400'
          }
        })
      }
    }

    // No pre-built or cached version — return build instructions
    return new Response(JSON.stringify({
      status: 'not_cached',
      message: 'Custom build not yet cached. Use the Python build script locally.',
      resolved,
      totalFiles,
      warnings,
      buildCommand: `python3 build/scripts/build.py --modules ${resolved.join(',')} --output ./Forevercraft`,
      hash
    }), {
      headers: { 'Content-Type': 'application/json' }
    })

  } catch (err) {
    return new Response(JSON.stringify({ error: 'Build failed', details: String(err) }), {
      status: 500,
      headers: { 'Content-Type': 'application/json' }
    })
  }
}

// Also handle GET for health check
export const onRequestGet: PagesFunction<Env> = async () => {
  return new Response(JSON.stringify({
    status: 'ok',
    modules: MODULES.length,
    edges: EDGES.length,
    version: '1.0.0'
  }), {
    headers: { 'Content-Type': 'application/json' }
  })
}
