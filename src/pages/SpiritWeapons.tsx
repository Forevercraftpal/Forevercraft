import { useState } from 'react'
import { spiritWeapons } from '../data/spirit-weapons'
import { SPIRIT_TIER_ORDER } from '../data/constants'
import type { SpiritTier } from '../data/types'
import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'
import TierBadge from '../components/ui/TierBadge'

const TIER_EFFECTIVENESS: Record<string, string> = {
  Common: '50%', Uncommon: '60%', Rare: '70%', Ornate: '80%',
  Exquisite: '90%', Mythical: '100%', Spirit: '125%',
}

export default function SpiritWeapons() {
  const [expandedId, setExpandedId] = useState<number | null>(null)

  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="SPIRIT WEAPONS"
        badge="THE ENDGAME"
        subtitle="14 legendary weapons. Seven stages of metamorphosis. Twin revelations."
        particleColor="rgba(192, 132, 252, 0.4)"
      />

      <div className="max-w-5xl mx-auto px-6 py-16 space-y-20">
        {spiritWeapons.map((weapon, i) => (
          <ScrollReveal key={weapon.id} delay={i * 50}>
            <section
              className="relative rounded-lg border border-stone-800 overflow-hidden transition-all duration-500"
              style={{
                borderColor: `${weapon.color}30`,
                background: `linear-gradient(135deg, ${weapon.color}08 0%, transparent 50%, ${weapon.color}05 100%)`,
              }}
            >
              {/* Header */}
              <div
                className="px-6 py-5 cursor-pointer"
                onClick={() => setExpandedId(expandedId === weapon.id ? null : weapon.id)}
              >
                <div className="flex flex-col md:flex-row md:items-center justify-between gap-3">
                  <div>
                    <p className="font-['Press_Start_2P'] text-[0.4rem] tracking-widest mb-2"
                       style={{ color: weapon.color }}>
                      {weapon.className.toUpperCase()} CLASS · {weapon.structure.toUpperCase()}
                    </p>
                    <h2 className="font-['Press_Start_2P'] text-lg md:text-xl text-stone-100"
                        style={{ textShadow: `0 0 20px ${weapon.color}40` }}>
                      {weapon.name}
                    </h2>
                    {weapon.hasTwin && (
                      <p className="font-['Press_Start_2P'] text-[0.4rem] text-stone-500 mt-1">
                        TWIN: <span style={{ color: weapon.color }}>{weapon.twinName}</span>
                      </p>
                    )}
                  </div>
                  <div className="flex items-center gap-3">
                    <span className="font-['Press_Start_2P'] text-[0.4rem] text-stone-600">
                      {weapon.weaponType.toUpperCase()}
                    </span>
                    <span className="font-['Press_Start_2P'] text-[0.4rem] text-stone-500">
                      {expandedId === weapon.id ? '▲ COLLAPSE' : '▼ EXPAND'}
                    </span>
                  </div>
                </div>

                {/* Lore */}
                <p className="font-['Crimson_Pro'] italic text-stone-400 mt-3 text-base">
                  "{weapon.lore}"
                </p>

                {/* Boss */}
                <p className="font-['Crimson_Pro'] text-stone-500 mt-2 text-sm">
                  Dropped by <span className="text-red-400 font-semibold">{weapon.bossName}</span> · {weapon.structure} · 5% drop rate
                </p>
              </div>

              {/* Expanded Content */}
              <div className={`grid transition-all duration-500 ${expandedId === weapon.id ? 'grid-rows-[1fr]' : 'grid-rows-[0fr]'}`}>
                <div className="overflow-hidden">
                  <div className="px-6 pb-6 space-y-6 border-t border-stone-800/50 pt-5">

                    {/* Tier Progression Bar */}
                    <div>
                      <h3 className="font-['Press_Start_2P'] text-[0.45rem] text-yellow-600 tracking-widest mb-4">
                        TIER PROGRESSION
                      </h3>
                      <div className="flex gap-1">
                        {SPIRIT_TIER_ORDER.map((tier) => (
                          <div key={tier} className="flex-1 text-center">
                            <div
                              className={`h-2 rounded-sm mb-2 transition-all ${
                                tier === 'Spirit' ? 'animate-[mythical-pulse_2s_ease-in-out_infinite]' : ''
                              }`}
                              style={{
                                background: tier === 'Spirit'
                                  ? 'linear-gradient(90deg, #C084FC, #FBBF24, #C084FC)'
                                  : weapon.color,
                                opacity: 0.3 + (SPIRIT_TIER_ORDER.indexOf(tier) / SPIRIT_TIER_ORDER.length) * 0.7,
                              }}
                            />
                            <TierBadge tier={tier as SpiritTier} size="sm" />
                            <p className="font-['Press_Start_2P'] text-[0.3rem] text-stone-500 mt-1">
                              {TIER_EFFECTIVENESS[tier]}
                            </p>
                          </div>
                        ))}
                      </div>
                    </div>

                    {/* Abilities */}
                    <div>
                      <h3 className="font-['Press_Start_2P'] text-[0.45rem] text-yellow-600 tracking-widest mb-3">
                        ABILITIES
                      </h3>
                      <div className="grid md:grid-cols-2 gap-3">
                        {weapon.abilities.map((ability) => (
                          <div
                            key={ability.name}
                            className="bg-stone-900/60 rounded border border-stone-800/50 p-3"
                          >
                            <div className="flex items-center justify-between mb-1">
                              <span className="font-['Press_Start_2P'] text-[0.4rem] text-stone-200">
                                {ability.name}
                              </span>
                              {ability.unlockTier && (
                                <TierBadge tier={ability.unlockTier as SpiritTier} size="sm" />
                              )}
                            </div>
                            <p className="font-['Crimson_Pro'] text-stone-400 text-sm">
                              {ability.description}
                            </p>
                          </div>
                        ))}
                      </div>
                    </div>

                    {/* Metamorphosis Requirements */}
                    <div>
                      <h3 className="font-['Press_Start_2P'] text-[0.45rem] text-yellow-600 tracking-widest mb-3">
                        SPIRIT METAMORPHOSIS REQUIREMENTS
                      </h3>
                      <div className="space-y-1.5">
                        {weapon.metamorphosisRequirements.map((req, j) => (
                          <div key={j} className="flex items-start gap-2">
                            <span className="text-stone-600 text-xs mt-0.5">◆</span>
                            <p className="font-['Crimson_Pro'] text-stone-400 text-sm">{req}</p>
                          </div>
                        ))}
                      </div>
                    </div>

                    {/* Twin Info */}
                    {weapon.hasTwin && (
                      <div className="bg-purple-950/20 border border-purple-800/30 rounded p-4">
                        <h3 className="font-['Press_Start_2P'] text-[0.45rem] text-purple-400 tracking-widest mb-2">
                          DREAM STORM CRYSTAL · TWIN REVELATION
                        </h3>
                        <p className="font-['Crimson_Pro'] text-stone-400 text-sm">
                          Use a Dream Storm Crystal (1% drop from Castle floors 25+) with {weapon.name} in
                          your offhand to reveal <span className="text-purple-300 font-semibold">{weapon.twinName}</span>.
                          Requires Mythical tier + Spirit Tome quest 50 completed.
                        </p>
                      </div>
                    )}

                    {!weapon.hasTwin && (
                      <div className="bg-yellow-950/20 border border-yellow-800/30 rounded p-4">
                        <h3 className="font-['Press_Start_2P'] text-[0.45rem] text-yellow-500 tracking-widest mb-2">
                          SOLO WEAPON · 25% EFFECTIVENESS BOOST
                        </h3>
                        <p className="font-['Crimson_Pro'] text-stone-400 text-sm">
                          {weapon.name} has no twin form. Using a Dream Storm Crystal grants a permanent
                          25% boost to all abilities and damage, reaching 150% effectiveness at Spirit tier.
                        </p>
                      </div>
                    )}
                  </div>
                </div>
              </div>
            </section>
          </ScrollReveal>
        ))}
      </div>
    </div>
  )
}
