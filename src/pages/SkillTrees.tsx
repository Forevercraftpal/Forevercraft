import { useState } from 'react'
import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'
import Spoiler from '../components/ui/Spoiler'

const TREES = [
  { name: 'Agility', column: 'adventure', icon: '💨', desc: '+4% movement speed per level. Leveled by blocks walked (4k to 100k).', prestige: ['Sprint Persist — speed lingers 3s after stopping', 'Double Jump — vertical boost while airborne (1s CD)', '...the wind forgets which way you were running.'] },
  { name: 'Dexterity', column: 'adventure', icon: '🎯', desc: '+2% block reach per level. Leveled by blocks placed (4k to 100k).', prestige: ['Quick Draw — +15% attack speed permanently', 'Dual Wield — +25% attack speed when dual-wielding', '...some say the world stretches to meet your hand.'] },
  { name: 'Evasion', column: 'adventure', icon: '🌀', desc: '+1% dodge chance per level. Leveled by times hit by mobs (400 to 10k).', prestige: ['Shadow Counter — teleport behind attacker on dodge', 'Vanishing Dodge — invisible 2s when dodging', '...the blade passes through you. Was anything there?'] },
  { name: 'Stealth', column: 'adventure', icon: '👁️', desc: '+4% crouch speed per level. Leveled by blocks crouched (2k to 50k).', prestige: ['Shadow Cloak — invisible while sneaking', 'Backstab — +50% melee damage while sneaking', '...they checked the room. It was empty. It was not.'] },
  { name: 'Vitality', column: 'adventure', icon: '❤️', desc: '+1 heart per level (from Lv.5). Leveled by fruits & veggies eaten (400 to 10k).', prestige: ['Vital Regen — passive regen below 50% HP', 'Death Save — auto-heal when critically low (5min CD)', '...some wounds close before they open.'] },
  { name: 'Taskmaster', column: 'progression', icon: '📋', desc: '+4% quest XP and reputation per level. Leveled by quests completed (100 to 2.5k).', prestige: ['Quest Mastery — quest rewards +25%', 'Renowned — permanent +1 Dream Rate', '...the world begins offering what you haven\'t asked for.'] },
  { name: 'Beastmaster', column: 'progression', icon: '🐺', desc: 'Tamed wolves deal more damage each level. Leveled by pets at max level (1 to 25).', prestige: ['Alpha Bond — companions deal +25% damage', 'Pack Tactics — wolves gain Strength I + Resistance I aura', '...they stopped listening to you. They started listening to something else.'] },
  { name: 'Victorian', column: 'progression', icon: '🏪', desc: '+4% crate and patron XP per level. Leveled by mobs slain (2k to 50k).', prestige: ['XP Siphon — +1 XP passively every 16 seconds', 'Bloodthirst — +50% bonus XP from mob crates', '...crates fall from things that haven\'t died yet.'] },
  { name: 'Culinary', column: 'progression', icon: '🍳', desc: '+10% Well-Fed duration per 5 levels. Leveled by meals cooked (50 to 1.25k).', prestige: ['Hearty Harvest — +10% ingredient drop chance', 'Double Portion — 15% chance to cook for free', '...the food never runs out. You stopped buying ingredients.'] },
  { name: 'Fishing', column: 'gathering', icon: '🎣', desc: 'Multi-catch chance +0.625% per level. Leveled by fish caught (2k to 50k).', prestige: ['Water Net — passive fish trap, auto-catches hourly', 'Second Net — deploy a second net', '...the fish come to you now. In your sleep.'] },
  { name: 'Mining', column: 'gathering', icon: '⛏️', desc: 'Miner\'s Surge haste chance, grows stronger each tier. Leveled by blocks mined (40k to 1M).', prestige: ['Ore Magnet — nearby ore drops pulled to you (8 blocks)', 'Ore Doubling — 5% chance to double ore drops', '...the stone whispers where the gold hides.'] },
  { name: 'Gathering', column: 'gathering', icon: '🌿', desc: 'Extra crop drops +0.625% per level. Leveled by crops harvested (1k to 25k).', prestige: ['Green Thumb — crops auto-replant on harvest', 'Fertile Aura — 25% crop growth speed in 16-block radius', '...the seeds plant themselves now. You just watch.'] },
  { name: 'Blacksmith', column: 'gathering', icon: '🔨', desc: 'Nearby furnaces smelt faster each level. Leveled by items smelted (2k to 50k).', prestige: ['Master Alloy — 2x smelt output chance + 50% less anvil XP', 'Efficient Fuel — 50% chance to not consume fuel', '...the fire burns hotter for you. No one knows why.'] },
  { name: 'Explorer', column: 'gathering', icon: '🧭', desc: 'Structure crate cooldown reduced by 4% per level. Leveled by structure crates looted (100 to 2.5k).', prestige: ['Structure Sense — alert within 100 blocks of structures', 'Cartographer — locate nearest structure (50hr CD)', '...you close your eyes. The path is already there.'] },
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
        badge="14 ADVANTAGE TREES"
        subtitle="25 levels each. 3 prestige cycles. 67 unique prestige abilities. Cross-tree synergies."
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
              <div className="bg-yellow-950/20 border border-yellow-800/30 rounded p-4 space-y-3">
                <h3 className="font-['Press_Start_2P'] text-[0.4rem] text-yellow-500 tracking-widest mb-2">
                  PRESTIGE REWARDS
                </h3>
                {selected.prestige.map((p, idx) => (
                  <div key={idx} className={`flex items-start gap-2 ${idx === 2 ? 'opacity-50' : ''}`}>
                    <span className={`font-['Press_Start_2P'] text-[0.35rem] shrink-0 mt-0.5 ${idx === 2 ? 'text-stone-600' : 'text-yellow-500'}`}>
                      P{idx + 1}
                    </span>
                    <p className={`font-['Crimson_Pro'] text-sm ${idx === 2 ? 'italic text-stone-600' : 'text-stone-300'}`}>
                      {p}
                    </p>
                  </div>
                ))}
                <p className="font-['Crimson_Pro'] text-stone-500 text-xs mt-2">
                  Each prestige retains bonuses and raises the cap.
                </p>
              </div>
            </div>
          </ScrollReveal>
        )}

        {/* Advanced Mechanics */}
        <Spoiler label="Advanced systems: prestige, synergies, respec, and cosmetics...">
          <div className="space-y-4">
            <div>
              <h3 className="font-['Press_Start_2P'] text-[0.5rem] text-yellow-400 tracking-widest mb-2">PRESTIGE SYSTEM</h3>
              <p className="font-['Crimson_Pro'] text-sm text-stone-400">
                When a tree reaches Level 25, you can prestige it — resetting to Level 1 while retaining all accumulated bonuses. Each prestige cycle unlocks a unique prestige ability. A tree can be prestiged up to 3 times, with each cycle raising the effective cap and stacking bonuses.
              </p>
            </div>

            <div>
              <h3 className="font-['Press_Start_2P'] text-[0.5rem] text-yellow-400 tracking-widest mb-2">CROSS-TREE SYNERGIES</h3>
              <p className="font-['Crimson_Pro'] text-sm text-stone-400">
                Multi-specialization is rewarded through cross-tree synergies. Leveling trees across different columns unlocks hidden bonuses that encourage well-rounded builds rather than single-tree focus.
              </p>
            </div>

            <div>
              <h3 className="font-['Press_Start_2P'] text-[0.5rem] text-yellow-400 tracking-widest mb-2">OPTIONAL CHALLENGES</h3>
              <p className="font-['Crimson_Pro'] text-sm text-stone-400">
                Each tree offers optional challenges that award bonus XP and Tree Tokens when completed. You receive a progress notification at 75% completion to keep you motivated toward the finish line.
              </p>
            </div>

            <div>
              <h3 className="font-['Press_Start_2P'] text-[0.5rem] text-yellow-400 tracking-widest mb-2">SEED OF FORGETTING</h3>
              <p className="font-['Crimson_Pro'] text-sm text-stone-400">
                Made a build mistake? The Seed of Forgetting lets you respec a tree, resetting its level and refunding progress. Use it wisely — they are rare.
              </p>
            </div>

            <div className="rounded border border-purple-800/30 bg-purple-950/10 p-4">
              <h3 className="font-['Press_Start_2P'] text-[0.5rem] text-purple-400 tracking-widest mb-2">COSMETIC CRATE</h3>
              <p className="font-['Crimson_Pro'] text-sm text-stone-400">
                Spend 15 Tree Tokens to open a Cosmetic Crate containing one of 36 cosmetics: 18 particle effects spread across 4 zones (head, chest, feet, ambient) and 18 unique titles. All cosmetic, all permanent.
              </p>
            </div>
          </div>
        </Spoiler>
      </div>
    </div>
  )
}
