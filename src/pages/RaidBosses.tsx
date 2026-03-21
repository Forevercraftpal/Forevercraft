import { useState } from 'react'
import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'

const BOSSES = [
  { name: 'The Hollow Sovereign', structure: 'Ancient City', class: 'Rogue', weapon: 'Hollow Fangs', difficulty: 4, color: '#8B5CF6', lore: 'Ruler of the deep dark. Silent. Patient. Lethal.', phases: ['Shadow Cloak — vanishes and strikes from darkness', 'Soul Harvest — drains HP from all players in range', 'Final Stand — duplicates into shadow clones'] },
  { name: 'The Void Architect', structure: 'End City', class: 'Hunter', weapon: 'Voidpiercer', difficulty: 5, color: '#7C3AED', lore: 'The builder of impossible geometries. Reality bends near it.', phases: ['Dimensional Shift — teleports arena sections', 'Void Beams — sweeping laser attacks across the room', 'Reality Collapse — floor disappears section by section'] },
  { name: 'The Gilded Tyrant', structure: 'Bastion Remnant', class: 'Berserker', weapon: 'Firebrand', difficulty: 4, color: '#DC2626', lore: 'A Piglin king drunk on gold and fury.', phases: ['Gold Rush — charges with knockback shockwaves', 'Hoard Defense — summons piglin brutes from gold piles', 'Molten Core — arena floods with lava, boss gains fire aura'] },
  { name: 'The Arbiter', structure: 'Trial Chambers', class: 'Dancer', weapon: 'Zephyr Edge', difficulty: 3, color: '#EC4899', lore: 'Judge of all who enter the trials. Pass or perish.', phases: ['Trial by Combat — waves of increasingly difficult mobs', 'Trial by Fire — floor tiles ignite in patterns', 'Final Judgment — Arbiter descends with multi-attack combos'] },
  { name: 'The Gatekeeper', structure: 'Stronghold', class: 'Dual Swordsman', weapon: 'Nite', difficulty: 5, color: '#7C3AED', lore: 'Guardian of the portal. Dual blades spinning eternally.', phases: ['Whirlwind — 360° blade storm, must dodge timing', 'Portal Summon — opens rifts that spawn Endermen', 'Transcendence — gains instant attack speed, no cooldown'] },
  { name: 'The Grand Illusionist', structure: 'Woodland Mansion', class: 'Beastlord', weapon: 'Whispering Spear', difficulty: 4, color: '#D97706', lore: 'Master of beasts and deception. Nothing is real.', phases: ['Mirror Images — creates 4 decoys, find the real one', 'Beast Summon — calls wolves, iron golems, ravagers', 'Grand Illusion — entire room transforms, maze phase'] },
  { name: 'The Ashen Lord', structure: 'Nether Fortress', class: 'Sentinel', weapon: 'Ashcrown Mace', difficulty: 4, color: '#6B7280', lore: 'Born from wither ash and blaze fire. The fortress is his body.', phases: ['Flame Pillars — spawns columns of fire across arena', 'Wither Storm — AoE Wither effect, must find safe zones', 'Ashen Form — becomes immune to fire, gains speed'] },
  { name: 'The Leviathan', structure: 'Ocean Monument', class: 'Javelin', weapon: 'Ellegaard\'s Trident', difficulty: 5, color: '#0EA5E9', lore: 'The ocean itself given form. Tides obey its will.', phases: ['Tidal Wave — water surges flood the arena in patterns', 'Whirlpool — pulls all players toward center', 'Deep Dive — arena submerges, must fight underwater'] },
  { name: 'The Eternal Pharaoh', structure: 'Desert Pyramid', class: 'Striker', weapon: 'Pharaoh\'s Fist', difficulty: 3, color: '#F59E0B', lore: 'Entombed for millennia. Awakened by greed.', phases: ['Sand Tomb — quicksand zones trap players', 'Curse of Ages — debuffs that stack over time', 'Resurrection — Pharaoh revives once at 50% HP'] },
  { name: 'The Venomweaver', structure: 'Jungle Pyramid', class: 'Healer', weapon: 'Lifewoven Branch', difficulty: 3, color: '#F472B6', lore: 'A living jungle condensed into malice. Vines that heal and vines that kill.', phases: ['Vine Snare — roots trap players in place', 'Poison Bloom — AoE poison clouds drift across arena', 'Symbiosis — boss heals from nearby plants, must destroy them'] },
  { name: 'The Deepcrawler', structure: 'Mineshaft', class: 'Archer', weapon: 'Sabrewing', difficulty: 3, color: '#22C55E', lore: 'Something that grew in the deepest tunnels. It has never seen the sun.', phases: ['Burrow — tunnels through walls, emerges to strike', 'Cave-In — stalactites fall from ceiling in patterns', 'Darkness — lights go out, must find glowing weak points'] },
  { name: 'The Mossheart Warden', structure: 'Dungeon', class: 'Knight', weapon: 'Dragonheart Sword', difficulty: 3, color: '#A3A3A3', lore: 'A construct of moss and stone, guarding spawners since before memory.', phases: ['Spawner Shield — activates spawners, gains shield near them', 'Iron Gate — sections arena with iron bars, must lure charge', 'Last Stand — increased speed, slam attacks create fissures'] },
  { name: 'The Crimson Bulwark', structure: 'Castle Floor 25', class: 'Tank', weapon: 'Bulwark Shield', difficulty: 5, color: '#78716C', lore: 'The castle\'s final guardian. Two shields, one will. Unbreakable.', phases: ['Shield Wall — impervious from front, must flank', 'Reflection Zone — plants shield, creates damage reflection', 'Dual Shields — wields both shields as weapons, AoE slams'] },
  { name: 'The Iron Phalanx', structure: 'Castle Floor 20', class: 'Hoplite', weapon: 'Royal Trident', difficulty: 4, color: '#0284C7', lore: 'An ancient formation given life. Shield bearers march eternally.', phases: ['Formation — summons shield bearers in phalanx formation', 'Spear Rain — throws spectral tridents across the arena', 'Break Formation — shield bearers scatter, boss becomes vulnerable'] },
]

export default function RaidBosses() {
  const [expandedIdx, setExpandedIdx] = useState<number | null>(null)

  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="RAID BOSSES"
        badge="14 ENCOUNTERS"
        subtitle="Multi-phase bosses at the bottom of every structure. 5% to change your world forever."
        particleColor="rgba(220, 38, 38, 0.3)"
      />

      <div className="max-w-5xl mx-auto px-6 py-16 space-y-4">
        {BOSSES.map((boss, i) => (
          <ScrollReveal key={boss.name} delay={i * 40}>
            <div
              className="rounded-lg border overflow-hidden transition-all duration-300 cursor-pointer hover:shadow-lg"
              style={{
                borderColor: expandedIdx === i ? `${boss.color}60` : `${boss.color}20`,
                background: expandedIdx === i
                  ? `linear-gradient(135deg, ${boss.color}10 0%, transparent 70%)`
                  : 'rgba(28, 25, 23, 0.6)',
              }}
              onClick={() => setExpandedIdx(expandedIdx === i ? null : i)}
            >
              {/* Header */}
              <div className="px-5 py-4 flex flex-col md:flex-row md:items-center justify-between gap-2">
                <div>
                  <h3 className="font-['Press_Start_2P'] text-[0.6rem] md:text-[0.7rem] text-stone-100"
                      style={{ textShadow: `0 0 15px ${boss.color}30` }}>
                    {boss.name}
                  </h3>
                  <p className="font-['Press_Start_2P'] text-[0.35rem] text-stone-500 tracking-widest mt-1">
                    {boss.structure.toUpperCase()} · {boss.class.toUpperCase()} CLASS
                  </p>
                </div>
                <div className="flex items-center gap-3">
                  <div className="flex gap-0.5">
                    {Array.from({ length: 5 }, (_, j) => (
                      <span key={j} className={`text-xs ${j < boss.difficulty ? 'text-red-500' : 'text-stone-700'}`}>
                        ★
                      </span>
                    ))}
                  </div>
                  <span className="font-['Press_Start_2P'] text-[0.35rem] text-stone-600">
                    {expandedIdx === i ? '▲' : '▼'}
                  </span>
                </div>
              </div>

              {/* Expanded */}
              <div className={`grid transition-all duration-400 ${expandedIdx === i ? 'grid-rows-[1fr]' : 'grid-rows-[0fr]'}`}>
                <div className="overflow-hidden">
                  <div className="px-5 pb-5 space-y-4 border-t border-stone-800/30 pt-4">
                    <p className="font-['Crimson_Pro'] italic text-stone-400">
                      "{boss.lore}"
                    </p>

                    {/* Phases */}
                    <div>
                      <h4 className="font-['Press_Start_2P'] text-[0.4rem] text-red-400 tracking-widest mb-2">PHASES</h4>
                      {boss.phases.map((phase, j) => (
                        <div key={j} className="flex items-start gap-2 mb-1.5">
                          <span className="font-['Press_Start_2P'] text-[0.35rem] text-red-600 mt-0.5 shrink-0">
                            P{j + 1}
                          </span>
                          <p className="font-['Crimson_Pro'] text-stone-400 text-sm">{phase}</p>
                        </div>
                      ))}
                    </div>

                    {/* Loot */}
                    <div className="bg-purple-950/20 border border-purple-800/30 rounded p-3">
                      <p className="font-['Press_Start_2P'] text-[0.35rem] text-purple-400 tracking-widest mb-1">
                        SPIRIT WEAPON DROP · 5% CHANCE
                      </p>
                      <p className="font-['Crimson_Pro'] text-stone-300">
                        {boss.weapon} <span className="text-stone-500">({boss.class} class)</span>
                      </p>
                    </div>

                    <p className="font-['Press_Start_2P'] text-[0.3rem] text-red-800 tracking-widest">
                      ENRAGE TIMER: 10 MINUTES · LOSE: ALL LEVELS LOST, SENT HOME
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </ScrollReveal>
        ))}
      </div>
    </div>
  )
}
