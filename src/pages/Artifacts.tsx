import { useState, useMemo } from 'react'
import { artifacts, TIERS, TYPES } from '../data/artifacts'
import type { Tier, ArtifactType } from '../data/types'
import { TIER_CARD, TIER_GLOW } from '../data/constants'
import PageHero from '../components/layout/PageHero'
import TierBadge from '../components/ui/TierBadge'
import ScrollReveal from '../components/effects/ScrollReveal'
import Spoiler from '../components/ui/Spoiler'

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

      {/* System Overview */}
      <div className="max-w-[1400px] mx-auto px-8 py-12">
        <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-4 mb-6">
          {[
            { title: '408 Artifacts', desc: 'Six tiers of handcrafted items — every one with unique abilities.' },
            { title: '28 Armor Sets', desc: '8 Mythical (5pc), 5 Exquisite (4pc), 15 Ornate (4pc) with set bonuses' },
            { title: '46 Accessories', desc: 'Passive effects when held in inventory. 19 toggleable via sneak+mainhand.' },
            { title: '13 Rings', desc: 'Unique passive effects from Amethyst (Night Vision) to Void (Resistance II + Fire Resist + Slow Falling)' },
          ].map((item, i) => (
            <ScrollReveal key={item.title} delay={i * 80}>
              <div className="rounded border border-stone-800 bg-stone-900/40 p-4 h-full">
                <h3 className="font-['Press_Start_2P'] text-[0.6rem] text-yellow-500 mb-2">{item.title}</h3>
                <p className="font-['Crimson_Pro'] text-stone-400 text-sm">{item.desc}</p>
              </div>
            </ScrollReveal>
          ))}
        </div>

        <ScrollReveal delay={300}>
          <Spoiler>
            <div className="space-y-3 font-['Crimson_Pro'] text-base text-stone-400">
              <p><span className="text-yellow-500 font-semibold">Spawn Rates:</span> Non-structure containers: 7% (Common-Exquisite), 10% (Mythical). Structure chests: 25% (Common-Exquisite), 44% (Mythical). Biome matching adds +25%.</p>
              <p><span className="text-yellow-500 font-semibold">Weapon Mastery:</span> Awaken artifacts with tier-matched Awakening Stones (20% crate drop). Gain XP from orbs, auto-unlock enchantments per level. Prestige up to 3 times. All 5 gear slots gain XP simultaneously.</p>
              <p><span className="text-yellow-500 font-semibold">Patina System:</span> Tracks playtime with each artifact. Fresh → Worn → Seasoned → Storied → Legendary over 72+ hours. Each stage adds flavor text and a permanent stat bonus.</p>
              <p><span className="text-yellow-500 font-semibold">Constellations:</span> 10 thematic groupings of artifacts. Complete a constellation = +0.25 permanent Dream Rate (up to +2.5 total).</p>
              <p><span className="text-yellow-500 font-semibold">Transmutation:</span> Sacrifice same-tier artifacts for one of the next tier. 5 Common → 1 Uncommon, 4 Rare → 1 Ornate, 3 Exquisite → 1 Mythical. Artificer nearby reduces cost by 1 daily.</p>
              <p><span className="text-yellow-500 font-semibold">Healer Artifacts:</span> 12 right-click healing items (2 per tier). Healer&apos;s Oath: during any healer cooldown, Weakness V is applied and arrows are neutralized.</p>
              <p><span className="text-yellow-500 font-semibold">Glyphforge:</span> Permanent rune binding on artifacts. 12 glyphs + Arcanum (random). Capacity scales: 1 (base) to 13 (mythical). Time-gated: 3 days for first glyph, 15 for thirteenth.</p>
            </div>
          </Spoiler>
        </ScrollReveal>
      </div>

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
                    className={`font-['Press_Start_2P'] text-[0.55rem] px-2 py-1.5 rounded border transition-all ${
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

          <p className="font-['Press_Start_2P'] text-[0.6rem] text-stone-600 tracking-widest">
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
                    <h3 className="font-['Press_Start_2P'] text-[0.7rem] text-stone-100 leading-relaxed">
                      {artifact.name}
                    </h3>
                    <TierBadge tier={artifact.tier} />
                  </div>
                  <div className="flex gap-2">
                    <span className="font-['Press_Start_2P'] text-[0.55rem] text-stone-500 tracking-widest">
                      {artifact.type.toUpperCase()}
                    </span>
                    {artifact.subtype && (
                      <span className="font-['Press_Start_2P'] text-[0.55rem] text-stone-600 tracking-widest">
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
