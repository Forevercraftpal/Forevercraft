import { useState, useMemo } from 'react'
import { artifacts, TIERS, TYPES } from '../data/artifacts'
import type { Tier, ArtifactType } from '../data/types'
import { TIER_CARD, TIER_GLOW } from '../data/constants'
import PageHero from '../components/layout/PageHero'
import TierBadge from '../components/ui/TierBadge'
import ScrollReveal from '../components/effects/ScrollReveal'

const SUBTYPES = ['All', 'Sword', 'Bow', 'Crossbow', 'Mace', 'Trident', 'Axe', 'Spear'] as const

export default function Artifacts() {
  const [search, setSearch] = useState('')
  const [selectedTier, setSelectedTier] = useState<Tier | 'All'>('All')
  const [selectedType, setSelectedType] = useState<ArtifactType | 'All'>('All')
  const [selectedSubtype, setSelectedSubtype] = useState<string>('All')

  const filtered = useMemo(() => artifacts.filter(a => {
    const matchSearch = a.name.toLowerCase().includes(search.toLowerCase())
    const matchTier = selectedTier === 'All' || a.tier === selectedTier
    const matchType = selectedType === 'All' || a.type === selectedType
    const matchSubtype = selectedSubtype === 'All' || a.subtype === selectedSubtype
    return matchSearch && matchTier && matchType && matchSubtype
  }), [search, selectedTier, selectedType, selectedSubtype])

  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="ARTIFACTS"
        badge="ARTIFACT CODEX"
        subtitle={`${artifacts.length} unique items across six tiers. Every one handcrafted.`}
      />

      <div className="max-w-7xl mx-auto px-6 py-10">
        {/* Filters */}
        <div className="space-y-4 mb-8 sticky top-14 z-40 bg-stone-950/95 backdrop-blur-sm py-4 -mx-6 px-6 border-b border-yellow-900/20">
          <div className="flex flex-col lg:flex-row gap-4">
            <input
              type="text"
              placeholder="Search artifacts..."
              value={search}
              onChange={e => setSearch(e.target.value)}
              className="flex-1 bg-stone-900 border border-yellow-900/50 rounded px-4 py-2.5 text-stone-200 placeholder-stone-600 font-['Crimson_Pro'] text-base focus:outline-none focus:border-yellow-700 transition-colors"
            />

            {/* Tier Filter */}
            <div className="flex gap-1.5 flex-wrap">
              {(['All', ...TIERS] as const).map(tier => (
                <button
                  key={tier}
                  onClick={() => setSelectedTier(tier)}
                  className={`font-['Press_Start_2P'] text-[0.38rem] px-2.5 py-2 rounded border transition-all ${
                    selectedTier === tier
                      ? 'bg-yellow-900/60 border-yellow-600 text-yellow-400'
                      : 'bg-stone-900 border-stone-700 text-stone-500 hover:border-yellow-900'
                  }`}
                >
                  {tier.toUpperCase()}
                </button>
              ))}
            </div>
          </div>

          <div className="flex flex-col lg:flex-row gap-4">
            {/* Type Filter */}
            <div className="flex gap-1.5 flex-wrap">
              {(['All', ...TYPES] as const).map(type => (
                <button
                  key={type}
                  onClick={() => setSelectedType(type)}
                  className={`font-['Press_Start_2P'] text-[0.38rem] px-2.5 py-2 rounded border transition-all ${
                    selectedType === type
                      ? 'bg-yellow-900/60 border-yellow-600 text-yellow-400'
                      : 'bg-stone-900 border-stone-700 text-stone-500 hover:border-yellow-900'
                  }`}
                >
                  {type.toUpperCase()}
                </button>
              ))}
            </div>

            {/* Subtype Filter (only show when Weapon selected) */}
            {(selectedType === 'Weapon' || selectedType === 'All') && (
              <div className="flex gap-1.5 flex-wrap">
                {SUBTYPES.map(sub => (
                  <button
                    key={sub}
                    onClick={() => setSelectedSubtype(sub)}
                    className={`font-['Press_Start_2P'] text-[0.35rem] px-2 py-1.5 rounded border transition-all ${
                      selectedSubtype === sub
                        ? 'bg-yellow-900/60 border-yellow-600 text-yellow-400'
                        : 'bg-stone-900 border-stone-700 text-stone-500 hover:border-yellow-900'
                    }`}
                  >
                    {sub.toUpperCase()}
                  </button>
                ))}
              </div>
            )}
          </div>

          <p className="font-['Press_Start_2P'] text-[0.4rem] text-stone-600 tracking-widest">
            {filtered.length} ARTIFACT{filtered.length !== 1 ? 'S' : ''} FOUND
          </p>
        </div>

        {/* Grid */}
        {filtered.length === 0 ? (
          <div className="text-center py-24">
            <p className="font-['Press_Start_2P'] text-[0.55rem] text-stone-600">NO ARTIFACTS FOUND</p>
          </div>
        ) : (
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4">
            {filtered.map((artifact, i) => (
              <ScrollReveal key={artifact.id} delay={Math.min(i * 30, 300)}>
                <div
                  className={`rounded border p-4 transition-all duration-200 hover:scale-[1.02] hover:shadow-lg ${TIER_CARD[artifact.tier]} ${TIER_GLOW[artifact.tier]} ${
                    artifact.tier === 'Mythical' ? 'animate-[mythical-pulse_3s_ease-in-out_infinite]' : ''
                  }`}
                >
                  <div className="flex items-start justify-between gap-2 mb-2">
                    <h3 className="font-['Press_Start_2P'] text-[0.5rem] text-stone-100 leading-relaxed">
                      {artifact.name}
                    </h3>
                    <TierBadge tier={artifact.tier} />
                  </div>
                  <div className="flex gap-2">
                    <span className="font-['Press_Start_2P'] text-[0.35rem] text-stone-500 tracking-widest">
                      {artifact.type.toUpperCase()}
                    </span>
                    {artifact.subtype && (
                      <span className="font-['Press_Start_2P'] text-[0.35rem] text-stone-600 tracking-widest">
                        · {artifact.subtype.toUpperCase()}
                      </span>
                    )}
                  </div>
                </div>
              </ScrollReveal>
            ))}
          </div>
        )}
      </div>
    </div>
  )
}
