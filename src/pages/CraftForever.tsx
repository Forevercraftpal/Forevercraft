import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'

const SPIRIT_TOOLS = [
  { name: 'Earthsong', type: 'Pickaxe', description: 'Sings to the stone, revealing hidden ores and accelerating mining. Resonates with the earth itself.', color: 'text-amber-400' },
  { name: 'Bloomweaver', type: 'Hoe', description: 'Coaxes life from barren soil. Enhances crop growth, increases yield, and can restore dead farmland.', color: 'text-green-400' },
  { name: 'Dustwalker', type: 'Shovel', description: 'Moves through earth like water. Excavates at supernatural speed and reveals buried treasures.', color: 'text-yellow-600' },
  { name: 'Tidecaller\'s Line', type: 'Fishing Rod', description: 'Calls fish from the deep. Dramatically improved catch rates, rare aquatic loot, and weather control.', color: 'text-cyan-400' },
  { name: 'Heartwood', type: 'Axe', description: 'Fells trees with reverence. Bonus wood drops, instant tree felling, and replants saplings.', color: 'text-red-400' },
  { name: 'Silkgrasp', type: 'Shears', description: 'Harvests with impossible delicacy. Silk touch on any block, bonus fiber drops, topiary sculpting.', color: 'text-purple-400' },
]

const TRADE_TRIAL_CATEGORIES = [
  'Mining', 'Farming', 'Woodcutting', 'Fishing', 'Excavation', 'Shearing',
]

const FORGE_PHASES = [
  { name: 'Gathering', step: 1, description: 'Collect rare materials from across all dimensions. Each recipe demands specific ingredients.', color: 'text-stone-400' },
  { name: 'Smelting', step: 2, description: 'Process raw materials in the Grand Forge. Temperature and timing matter.', color: 'text-orange-400' },
  { name: 'Assembly', step: 3, description: 'Combine smelted components into the item framework. Precision determines quality.', color: 'text-yellow-400' },
  { name: 'Tempering', step: 4, description: 'Strengthen the assembled item through repeated heating and cooling cycles.', color: 'text-red-400' },
  { name: 'Awakening', step: 5, description: 'Infuse the tempered item with spiritual energy. The tool comes alive.', color: 'text-purple-400' },
]

const MILESTONE_TITLES = [
  { rank: 1, title: 'Novice' },
  { rank: 100, title: 'Apprentice' },
  { rank: 250, title: 'Journeyman' },
  { rank: 500, title: 'Expert' },
  { rank: 750, title: 'Master' },
  { rank: 1000, title: 'Grand Artisan' },
]

export default function CraftForever() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="CRAFT FOREVER"
        badge="THE ARTISAN'S PATH"
        subtitle="Spirit Tools, Trade Trials, the Grand Forge, and a 100-rank Artisan journey. Crafting reimagined."
        particleColor="#f59e0b"
      />

      {/* Spirit Tools */}
      <section className="max-w-[1400px] mx-auto px-8 py-16">
        <ScrollReveal>
          <div className="text-center mb-12">
            <h2 className="font-['Press_Start_2P'] text-base text-yellow-400 mb-3">SPIRIT TOOLS</h2>
            <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
              Six legendary tools, each bound to a craft. A 5% drop from completing Master Trials — the ultimate test at Trade Trial tier 10.
            </p>
          </div>
        </ScrollReveal>

        <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-5">
          {SPIRIT_TOOLS.map((tool, i) => (
            <ScrollReveal key={tool.name} delay={i * 80}>
              <div className="rounded-lg border border-stone-800 bg-stone-900/40 p-5 h-full">
                <p className="font-['Press_Start_2P'] text-[0.55rem] text-stone-600 mb-1">{tool.type}</p>
                <h3 className={`font-['Press_Start_2P'] text-[0.6rem] ${tool.color} mb-2`}>{tool.name}</h3>
                <p className="font-['Crimson_Pro'] text-base text-stone-400">{tool.description}</p>
              </div>
            </ScrollReveal>
          ))}
        </div>
      </section>

      {/* Trade Trials */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-[1400px] mx-auto px-8 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-base text-yellow-400 mb-3">TRADE TRIALS</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
                Six categories with 10 tiers each. Complete timed challenges to prove your mastery. Master trials at tier 10 spawn procedural arenas with unique obstacles.
              </p>
            </div>
          </ScrollReveal>

          <div className="grid grid-cols-2 md:grid-cols-3 gap-4 max-w-2xl mx-auto mb-8">
            {TRADE_TRIAL_CATEGORIES.map((cat, i) => (
              <ScrollReveal key={cat} delay={i * 60}>
                <div className="text-center rounded-lg border border-yellow-900/30 bg-yellow-900/10 p-4">
                  <p className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-400">{cat}</p>
                  <p className="font-['Crimson_Pro'] text-base text-stone-500 mt-1">10 tiers</p>
                </div>
              </ScrollReveal>
            ))}
          </div>

          <ScrollReveal delay={400}>
            <div className="max-w-xl mx-auto text-center rounded-lg border border-yellow-800/30 bg-yellow-900/10 p-4">
              <p className="font-['Press_Start_2P'] text-[0.6rem] text-yellow-600 mb-1">MASTER TRIAL (TIER 10)</p>
              <p className="font-['Crimson_Pro'] text-base text-stone-400">
                Spawns a procedural arena tailored to your trade. Unique obstacles, time pressure, and the ultimate test of skill.
              </p>
            </div>
          </ScrollReveal>
        </div>
      </section>

      {/* Artifact Forge Materials */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-[1400px] mx-auto px-8 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-base text-yellow-400 mb-3">ARTIFACT FORGE MATERIALS</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
                28 crafting materials across 4 categories and 7 tiers. Found through prospect mining, biome-inclined drops,
                and chemistry. Forge them at the Artisan's Table to create artifacts — or fail and still have a 7% chance at one.
              </p>
            </div>
          </ScrollReveal>

          <ScrollReveal delay={100}>
            <div className="grid md:grid-cols-2 gap-6 mb-10">
              <div className="rounded-lg border border-stone-800 bg-stone-900/40 p-5">
                <h3 className="font-['Press_Start_2P'] text-[0.65rem] text-amber-400 mb-3">FORGE MATERIALS</h3>
                <p className="font-['Crimson_Pro'] text-base text-stone-400 mb-3">Weapon, Armor, Tool, and Accessory materials in 7 tiers — from Raw Blade Shards to the legendary Doomforge Core.</p>
                <p className="font-['Crimson_Pro'] text-base text-stone-500">Store them in the <span className="text-stone-300">Ore Bag</span> (earned at Blacksmith level 1). 28 slots, 3 pages of portable forge storage.</p>
              </div>
              <div className="rounded-lg border border-purple-800/40 bg-purple-950/10 p-5">
                <h3 className="font-['Press_Start_2P'] text-[0.65rem] text-purple-400 mb-3">CHEMISTRY MATERIALS</h3>
                <p className="font-['Crimson_Pro'] text-base text-stone-400 mb-3">Potion ingredients and chemical reagents for the new Chemistry advantage track. Brew potions, create elixirs, and push your craft.</p>
                <p className="font-['Crimson_Pro'] text-base text-stone-500">Store them in the <span className="text-stone-300">Ingredient Binder</span> (earned at Chemistry level 1). 28 slots, 3 pages of portable chemistry storage.</p>
              </div>
            </div>
          </ScrollReveal>

          <ScrollReveal delay={200}>
            <div className="rounded-lg border border-stone-800 bg-stone-900/30 p-5">
              <h3 className="font-['Press_Start_2P'] text-[0.65rem] text-stone-400 mb-3">BIOME-INCLINED DROPS</h3>
              <p className="font-['Crimson_Pro'] text-base text-stone-400">
                Materials drop with biome weighting — mine in the Desert for more Weapon and Accessory materials,
                in Mountains for Armor, in Jungles for Accessories, in the Nether for Weapons. 7 biome groups with
                unique category weights. Higher-tier ores yield higher-tier materials (diamond ore → T4, ancient debris → T6-T7).
              </p>
            </div>
          </ScrollReveal>
        </div>
      </section>

      {/* Grand Forge */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-[1400px] mx-auto px-8 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-base text-yellow-400 mb-3">THE GRAND FORGE</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
                A 5-phase crafting system for creating the most powerful items in the game.
              </p>
            </div>
          </ScrollReveal>

          <div className="max-w-3xl mx-auto">
            <div className="relative">
              {/* Connecting line */}
              <div className="absolute left-6 top-0 bottom-0 w-px bg-gradient-to-b from-stone-700 via-yellow-700/50 to-purple-600/50 hidden md:block" />

              <div className="space-y-5">
                {FORGE_PHASES.map((phase, i) => (
                  <ScrollReveal key={phase.name} delay={i * 100}>
                    <div className="flex items-start gap-5">
                      <div className="relative z-10 flex items-center justify-center w-12 h-12 rounded-full bg-stone-900 border border-stone-700 shrink-0">
                        <span className={`font-['Press_Start_2P'] text-[0.7rem] ${phase.color}`}>{phase.step}</span>
                      </div>
                      <div className="pt-2">
                        <h3 className={`font-['Press_Start_2P'] text-[0.55rem] ${phase.color} mb-1`}>{phase.name}</h3>
                        <p className="font-['Crimson_Pro'] text-base text-stone-400">{phase.description}</p>
                      </div>
                    </div>
                  </ScrollReveal>
                ))}
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Artisan Rank */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-[1400px] mx-auto px-8 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-base text-yellow-400 mb-3">ARTISAN RANK</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
                Progress from Rank 1 to 100. Each milestone unlocks a new title and crafting abilities.
              </p>
            </div>
          </ScrollReveal>

          <div className="flex flex-wrap justify-center gap-3 max-w-2xl mx-auto mb-8">
            {MILESTONE_TITLES.map((m, i) => (
              <ScrollReveal key={m.rank} delay={i * 60}>
                <div className="text-center rounded-lg border border-stone-800 bg-stone-900/40 px-5 py-3">
                  <p className="font-['Press_Start_2P'] text-[0.6rem] text-stone-600 mb-1">RANK {m.rank}</p>
                  <p className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-400">{m.title}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>

          <ScrollReveal delay={400}>
            <div className="text-center rounded-lg border border-yellow-800/30 bg-yellow-900/10 p-5 max-w-xl mx-auto">
              <p className="font-['Press_Start_2P'] text-[0.65rem] text-yellow-600 mb-2">ARTISAN TOME</p>
              <p className="font-['Crimson_Pro'] text-base text-stone-400">
                Once you earn a Spirit Tool, its Artisan Tome unlocks — a 100-part quest chain that levels and awakens the tool through crafting challenges. Complete the full chain to reach its ultimate form.
              </p>
            </div>
          </ScrollReveal>
        </div>
      </section>
    </div>
  )
}
