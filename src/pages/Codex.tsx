import { useState, useMemo } from 'react'
import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'
import { artifacts } from '../data/artifacts'
import { companions } from '../data/companions'
import { spiritWeapons } from '../data/spirit-weapons'
import { classes } from '../data/classes'

type CategoryKey = 'all' | 'artifacts' | 'companions' | 'spirit-weapons' | 'classes'

const CATEGORIES: { key: CategoryKey; label: string; count: number }[] = [
  { key: 'all', label: 'All', count: artifacts.length + companions.length + spiritWeapons.length + classes.length },
  { key: 'artifacts', label: 'Artifacts', count: artifacts.length },
  { key: 'companions', label: 'Companions', count: companions.length },
  { key: 'spirit-weapons', label: 'Spirit Weapons', count: spiritWeapons.length },
  { key: 'classes', label: 'Classes', count: classes.length },
]

const TIER_COLORS: Record<string, string> = {
  Common: 'text-stone-400 border-stone-600',
  Uncommon: 'text-green-400 border-green-700/50',
  Rare: 'text-blue-400 border-blue-700/50',
  Ornate: 'text-purple-400 border-purple-700/50',
  Exquisite: 'text-orange-400 border-orange-700/50',
  Mythical: 'text-yellow-400 border-yellow-600/50',
}

interface SearchResult {
  category: string
  name: string
  tier?: string
  detail: string
}

export default function Codex() {
  const [search, setSearch] = useState('')
  const [activeCategory, setActiveCategory] = useState<CategoryKey>('all')

  const allItems = useMemo<SearchResult[]>(() => {
    const items: SearchResult[] = []

    for (const a of artifacts) {
      items.push({
        category: 'Artifact',
        name: a.name,
        tier: a.tier,
        detail: `${a.tier} ${a.type}${a.subtype ? ` (${a.subtype})` : ''}`,
      })
    }

    for (const c of companions) {
      items.push({
        category: 'Companion',
        name: c.displayName,
        tier: c.tier,
        detail: `${c.tier} — ${c.abilityName}: ${c.abilityDescription}`,
      })
    }

    for (const sw of spiritWeapons) {
      items.push({
        category: 'Spirit Weapon',
        name: sw.name,
        detail: `${sw.className} ${sw.weaponType} — Boss: ${sw.bossName}`,
      })
    }

    for (const cl of classes) {
      items.push({
        category: 'Class',
        name: cl.name,
        detail: `${cl.archetype} — ${cl.weaponType}`,
      })
    }

    return items
  }, [])

  const filtered = useMemo(() => {
    const q = search.toLowerCase()
    return allItems.filter(item => {
      const matchSearch = !q || item.name.toLowerCase().includes(q) || item.detail.toLowerCase().includes(q) || item.category.toLowerCase().includes(q)
      const matchCategory =
        activeCategory === 'all' ||
        (activeCategory === 'artifacts' && item.category === 'Artifact') ||
        (activeCategory === 'companions' && item.category === 'Companion') ||
        (activeCategory === 'spirit-weapons' && item.category === 'Spirit Weapon') ||
        (activeCategory === 'classes' && item.category === 'Class')
      return matchSearch && matchCategory
    })
  }, [search, activeCategory, allItems])

  const grouped = useMemo(() => {
    const groups: Record<string, SearchResult[]> = {}
    for (const item of filtered) {
      if (!groups[item.category]) groups[item.category] = []
      groups[item.category].push(item)
    }
    return groups
  }, [filtered])

  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="CODEX"
        badge="UNIVERSAL SEARCH"
        subtitle={`Search across ${allItems.length} entries. Artifacts, companions, spirit weapons, and classes — all in one place.`}
        particleColor="#eab308"
      >
        <div className="mt-8 max-w-2xl mx-auto">
          <input
            type="text"
            placeholder="Search the codex..."
            value={search}
            onChange={e => setSearch(e.target.value)}
            className="w-full bg-stone-900/80 border border-yellow-900/50 rounded-lg px-6 py-4 text-stone-200 placeholder-stone-600 font-['Crimson_Pro'] text-lg focus:outline-none focus:border-yellow-600 transition-colors shadow-lg shadow-black/30"
          />
        </div>
      </PageHero>

      <div className="max-w-6xl mx-auto px-6 py-10">
        {/* Category Filters */}
        <ScrollReveal>
          <div className="flex gap-2 flex-wrap mb-8 sticky top-14 z-40 bg-stone-950/95 backdrop-blur-sm py-4 -mx-6 px-6 border-b border-yellow-900/20">
            {CATEGORIES.map(cat => (
              <button
                key={cat.key}
                onClick={() => setActiveCategory(cat.key)}
                className={`font-['Press_Start_2P'] text-[0.38rem] px-3 py-2 rounded border transition-all ${
                  activeCategory === cat.key
                    ? 'bg-yellow-900/60 border-yellow-600 text-yellow-400'
                    : 'bg-stone-900 border-stone-700 text-stone-500 hover:border-yellow-900'
                }`}
              >
                {cat.label} ({cat.count})
              </button>
            ))}
          </div>
        </ScrollReveal>

        {/* Results */}
        {filtered.length === 0 ? (
          <div className="text-center py-20">
            <p className="font-['Press_Start_2P'] text-[0.5rem] text-stone-600 mb-2">NO RESULTS</p>
            <p className="font-['Crimson_Pro'] text-sm text-stone-500">Try a different search term or category.</p>
          </div>
        ) : (
          <div className="space-y-10">
            {Object.entries(grouped).map(([category, items]) => (
              <ScrollReveal key={category}>
                <div>
                  <div className="flex items-baseline gap-3 mb-4">
                    <h2 className="font-['Press_Start_2P'] text-[0.6rem] text-yellow-400">{category.toUpperCase()}S</h2>
                    <span className="font-['Crimson_Pro'] text-sm text-stone-600">{items.length} results</span>
                  </div>

                  <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-3">
                    {items.map((item, i) => {
                      const tierStyle = item.tier ? TIER_COLORS[item.tier] || 'text-stone-400 border-stone-600' : 'text-stone-400 border-stone-700'
                      const [tierText] = tierStyle.split(' ')
                      return (
                        <div
                          key={`${item.category}-${item.name}-${i}`}
                          className={`rounded-lg border ${tierStyle.split(' ').slice(1).join(' ')} bg-stone-900/30 p-4`}
                        >
                          <div className="flex items-baseline justify-between mb-1">
                            <h3 className={`font-['Press_Start_2P'] text-[0.45rem] ${tierText}`}>{item.name}</h3>
                            {item.tier && (
                              <span className={`font-['Press_Start_2P'] text-[0.3rem] ${tierText} opacity-60`}>{item.tier}</span>
                            )}
                          </div>
                          <p className="font-['Crimson_Pro'] text-xs text-stone-500">{item.detail}</p>
                        </div>
                      )
                    })}
                  </div>
                </div>
              </ScrollReveal>
            ))}
          </div>
        )}

        {/* Result count */}
        {filtered.length > 0 && (
          <div className="text-center mt-10 pt-6 border-t border-stone-800">
            <p className="font-['Crimson_Pro'] text-sm text-stone-600">
              Showing {filtered.length} of {allItems.length} entries
            </p>
          </div>
        )}
      </div>
    </div>
  )
}
