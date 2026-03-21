import { useState, useMemo } from 'react'
import { companions } from '../data/companions'
import type { Tier } from '../data/types'
import { TIER_CARD, TIER_GLOW, TIER_ORDER } from '../data/constants'
import PageHero from '../components/layout/PageHero'
import TierBadge from '../components/ui/TierBadge'
import ScrollReveal from '../components/effects/ScrollReveal'

export default function Companions() {
  const [search, setSearch] = useState('')
  const [selectedTier, setSelectedTier] = useState<Tier | 'All'>('All')

  const filtered = useMemo(() => companions.filter(c => {
    const matchSearch = c.displayName.toLowerCase().includes(search.toLowerCase()) ||
                        c.abilityName.toLowerCase().includes(search.toLowerCase())
    const matchTier = selectedTier === 'All' || c.tier === selectedTier
    return matchSearch && matchTier
  }), [search, selectedTier])

  const tierCounts = useMemo(() => {
    const counts: Record<string, number> = { All: companions.length }
    for (const c of companions) counts[c.tier] = (counts[c.tier] || 0) + 1
    return counts
  }, [])

  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="COMPANIONS"
        badge="PET CATALOGUE"
        subtitle={`${companions.length} companions. Each one different. Level 1 to 100. Eternal Bond awaits.`}
        particleColor="rgba(74, 222, 128, 0.4)"
      />

      <div className="max-w-7xl mx-auto px-6 py-10">
        {/* Filters */}
        <div className="sticky top-14 z-40 bg-stone-950/95 backdrop-blur-sm py-4 -mx-6 px-6 border-b border-yellow-900/20 mb-8">
          <div className="flex flex-col md:flex-row gap-4 mb-3">
            <input
              type="text"
              placeholder="Search companions..."
              value={search}
              onChange={e => setSearch(e.target.value)}
              className="flex-1 bg-stone-900 border border-yellow-900/50 rounded px-4 py-2.5 text-stone-200 placeholder-stone-600 font-['Crimson_Pro'] text-base focus:outline-none focus:border-yellow-700 transition-colors"
            />
            <div className="flex gap-1.5 flex-wrap">
              {(['All', ...TIER_ORDER] as const).map(tier => (
                <button
                  key={tier}
                  onClick={() => setSelectedTier(tier)}
                  className={`font-['Press_Start_2P'] text-[0.38rem] px-2.5 py-2 rounded border transition-all ${
                    selectedTier === tier
                      ? 'bg-yellow-900/60 border-yellow-600 text-yellow-400'
                      : 'bg-stone-900 border-stone-700 text-stone-500 hover:border-yellow-900'
                  }`}
                >
                  {tier.toUpperCase()} ({tierCounts[tier] || 0})
                </button>
              ))}
            </div>
          </div>
          <p className="font-['Press_Start_2P'] text-[0.4rem] text-stone-600 tracking-widest">
            {filtered.length} COMPANION{filtered.length !== 1 ? 'S' : ''} FOUND
          </p>
        </div>

        {/* Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4">
          {filtered.map((companion, i) => (
            <ScrollReveal key={companion.id} delay={Math.min(i * 25, 300)}>
              <div className={`rounded border p-4 transition-all duration-200 hover:scale-[1.02] hover:shadow-lg ${TIER_CARD[companion.tier]} ${TIER_GLOW[companion.tier]}`}>
                <div className="flex items-start justify-between gap-2 mb-2">
                  <h3 className="font-['Press_Start_2P'] text-[0.5rem] text-stone-100 leading-relaxed">
                    {companion.displayName}
                  </h3>
                  <TierBadge tier={companion.tier} />
                </div>
                <p className="font-['Press_Start_2P'] text-[0.35rem] text-stone-500 tracking-widest mb-2">
                  #{companion.id}
                </p>
                <div className="mt-2 pt-2 border-t border-stone-700/30">
                  <p className="font-['Press_Start_2P'] text-[0.38rem] mb-1" style={{ color: companion.tier === 'Mythical' ? '#FBBF24' : '#9CA3AF' }}>
                    {companion.abilityName}
                  </p>
                  {companion.abilityDescription && (
                    <p className="font-['Crimson_Pro'] text-stone-400 text-sm leading-snug">
                      {companion.abilityDescription}
                    </p>
                  )}
                </div>
              </div>
            </ScrollReveal>
          ))}
        </div>
      </div>
    </div>
  )
}
