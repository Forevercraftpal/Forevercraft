import { useState } from 'react'
import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'

const TREES = [
  { name: 'Agility', column: 'adventure', icon: '💨', desc: 'Movement speed bonuses at each level. Sprint faster, dodge better.', prestige: 'Phantom Sprint — brief intangibility while sprinting' },
  { name: 'Vitality', column: 'adventure', icon: '❤️', desc: 'Extra hearts per level. More HP means more mistakes you can survive.', prestige: 'Second Wind — auto-heal 4 hearts when dropping below 20% HP' },
  { name: 'Stealth', column: 'adventure', icon: '👁️', desc: 'Crouching invisibility at high levels. The shadows are your ally.', prestige: 'Shadow Meld — become fully invisible while crouching in darkness' },
  { name: 'Dexterity', column: 'adventure', icon: '🎯', desc: 'Combat precision. Critical hit chance and attack speed scaling.', prestige: 'Perfect Strike — 10% chance for unblockable hits' },
  { name: 'Evasion', column: 'adventure', icon: '🌀', desc: 'Damage avoidance chance per level. Sometimes the best defense is not being there.', prestige: 'Afterimage — dodged attacks leave a decoy for 2s' },
  { name: 'Beastmaster', column: 'progression', icon: '🐺', desc: 'Tamed wolf combat power. Your pack fights harder at your side.', prestige: 'Alpha Call — summon spectral wolves to fight for 30s' },
  { name: 'Blacksmith', column: 'progression', icon: '🔨', desc: 'Furnace smelting speed. Craft faster, forge stronger.', prestige: 'Master Forge — 5% chance to duplicate smelted items' },
  { name: 'Culinary', column: 'progression', icon: '🍳', desc: 'Meal healing output. Your cooking restores more and lasts longer.', prestige: 'Chef\'s Kiss — meals grant a random bonus buff' },
  { name: 'Victorian', column: 'progression', icon: '🏪', desc: 'Villager pricing discounts. Trade smarter, not harder.', prestige: 'Merchant Prince — unlock exclusive legendary trades' },
  { name: 'Taskmaster', column: 'progression', icon: '📋', desc: 'Quest reward scaling. More XP, better loot from completed quests.', prestige: 'Double Down — 15% chance for double quest rewards' },
  { name: 'Fishing', column: 'gathering', icon: '🎣', desc: 'Fishing-specific bonuses. Catch rarer fish and treasures.', prestige: 'Master Angler — exclusive legendary fish pool unlocked' },
  { name: 'Mining', column: 'gathering', icon: '⛏️', desc: 'Mining-specific bonuses. Faster breaking, better drops.', prestige: 'Ore Sense — nearby ores glow through walls briefly' },
  { name: 'Gathering', column: 'gathering', icon: '🌿', desc: 'Foraging and harvesting bonuses. Nature provides more.', prestige: 'Nature\'s Bounty — double crop/forage drops 10% of time' },
]

const COLUMNS = [
  { id: 'adventure', name: 'Adventure', color: '#DC2626' },
  { id: 'progression', name: 'Progression', color: '#FBBF24' },
  { id: 'gathering', name: 'Gathering', color: '#22C55E' },
]

export default function SkillTrees() {
  const [selectedTree, setSelectedTree] = useState<string | null>(null)
  const selected = TREES.find(t => t.name === selectedTree)

  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="SKILL TREES"
        badge="13 ADVANTAGE TREES"
        subtitle="25 levels each. 3 prestige cycles. 67 unique prestige abilities. Synergies between trees."
        particleColor="rgba(34, 197, 94, 0.3)"
      />

      <div className="max-w-7xl mx-auto px-6 py-16">
        {/* Three Column Layout */}
        <div className="grid md:grid-cols-3 gap-8 mb-12">
          {COLUMNS.map(col => (
            <ScrollReveal key={col.id}>
              <div>
                <h3 className="font-['Press_Start_2P'] text-[0.5rem] tracking-widest mb-4 text-center"
                    style={{ color: col.color }}>
                  {col.name.toUpperCase()}
                </h3>
                <div className="space-y-2">
                  {TREES.filter(t => t.column === col.id).map(tree => (
                    <button
                      key={tree.name}
                      onClick={() => setSelectedTree(selectedTree === tree.name ? null : tree.name)}
                      className={`w-full rounded border p-3 text-left transition-all duration-200 hover:scale-[1.02] ${
                        selectedTree === tree.name
                          ? 'border-yellow-500 bg-yellow-950/30'
                          : 'border-stone-700 bg-stone-900/50 hover:border-stone-600'
                      }`}
                    >
                      <div className="flex items-center gap-3">
                        <span className="text-xl">{tree.icon}</span>
                        <div>
                          <p className="font-['Press_Start_2P'] text-[0.42rem] text-stone-200">
                            {tree.name.toUpperCase()}
                          </p>
                          <p className="font-['Crimson_Pro'] text-stone-500 text-sm mt-0.5">
                            Level 1-25 · 3 Prestige
                          </p>
                        </div>
                      </div>
                    </button>
                  ))}
                </div>
              </div>
            </ScrollReveal>
          ))}
        </div>

        {/* Selected Tree Detail */}
        {selected && (
          <ScrollReveal>
            <div className="rounded-lg border border-yellow-900/40 bg-stone-900/40 p-6 md:p-8">
              <div className="flex items-center gap-3 mb-4">
                <span className="text-3xl">{selected.icon}</span>
                <div>
                  <h2 className="font-['Press_Start_2P'] text-lg text-yellow-400">
                    {selected.name.toUpperCase()}
                  </h2>
                  <p className="font-['Press_Start_2P'] text-[0.4rem] text-stone-500 tracking-widest">
                    LEVEL 1-25 · 3 PRESTIGE CYCLES · {selected.column.toUpperCase()}
                  </p>
                </div>
              </div>

              <p className="font-['Crimson_Pro'] text-stone-300 text-lg mb-6">{selected.desc}</p>

              {/* Visual Level Bar */}
              <div className="mb-6">
                <div className="flex gap-0.5">
                  {Array.from({ length: 25 }, (_, i) => (
                    <div
                      key={i}
                      className="flex-1 h-4 rounded-sm bg-yellow-600/30 hover:bg-yellow-500/60 transition-colors cursor-pointer relative group"
                      style={{ opacity: 0.3 + (i / 25) * 0.7 }}
                    >
                      <div className="absolute -top-6 left-1/2 -translate-x-1/2 font-['Press_Start_2P'] text-[0.3rem] text-yellow-500 opacity-0 group-hover:opacity-100 transition-opacity whitespace-nowrap">
                        LV {i + 1}
                      </div>
                    </div>
                  ))}
                </div>
                <div className="flex justify-between mt-1">
                  <span className="font-['Press_Start_2P'] text-[0.3rem] text-stone-600">LV 1</span>
                  <span className="font-['Press_Start_2P'] text-[0.3rem] text-stone-600">LV 25</span>
                </div>
              </div>

              {/* Prestige */}
              <div className="bg-yellow-950/20 border border-yellow-800/30 rounded p-4">
                <h3 className="font-['Press_Start_2P'] text-[0.4rem] text-yellow-500 tracking-widest mb-2">
                  PRESTIGE ABILITY
                </h3>
                <p className="font-['Crimson_Pro'] text-stone-300">{selected.prestige}</p>
                <p className="font-['Crimson_Pro'] text-stone-500 text-sm mt-2">
                  Max a tree 3 times to unlock. Each prestige retains bonuses and raises the cap.
                </p>
              </div>
            </div>
          </ScrollReveal>
        )}
      </div>
    </div>
  )
}
