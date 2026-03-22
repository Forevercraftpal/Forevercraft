import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'
import Accordion from '../components/ui/Accordion'
import Spoiler from '../components/ui/Spoiler'

const PERMANENT = [
  { name: 'Butterfly Pet (scales Lv1-100)', value: '+0.5 to +3.0', max: 3 },
  { name: 'Mythical Armor Pieces', value: '+0.5 each (up to +2.5)', max: 2.5 },
  { name: 'Artifact Constellations', value: '+0.25 each (10 sets, up to +2.5)', max: 2.5 },
  { name: 'Crystal of Dreams', value: '+1 (consumable, once per player)', max: 1 },
  { name: 'Rabbit\'s Dreaming Foot', value: '+1 (Killer Bunny drop)', max: 1 },
  { name: 'Crystalized Dream Droppings', value: '+1 (5% bat drop)', max: 1 },
  { name: 'Dream Inducing Mushroom', value: '+1 (0.25% mushroom block)', max: 1 },
  { name: 'Chorus Dreaming Fruit', value: '+1 (0.25% chorus plant)', max: 1 },
  { name: 'Crumb of Dreams', value: '+1 (rare world drop)', max: 1 },
  { name: 'Harvester\'s Dreamy Seed', value: '+1 (farming drop)', max: 1 },
  { name: 'Tiller\'s Dream Petal', value: '+1 (crop harvest drop)', max: 1 },
  { name: 'Miner\'s Slumbering Geode', value: '+1 (mining drop)', max: 1 },
  { name: 'Fisherman\'s Dozing Lure', value: '+1 (fishing drop)', max: 1 },
  { name: 'Prospector\'s Dream Ore', value: '+1 (prospect node drop)', max: 1 },
  { name: 'Blacksmith\'s Dreaming Ember', value: '+1 (forging drop)', max: 1 },
  { name: 'Collector\'s Dream Relic', value: '+1 (achievement reward)', max: 1 },
  { name: 'Wanderer\'s Dream Map', value: '+1 (exploration reward)', max: 1 },
  { name: 'Dreamweaver\'s Thread', value: '+1 (rare crafting drop)', max: 1 },
  { name: 'Patron\'s Dream Essence', value: '+1 (patron kill drop)', max: 1 },
  { name: 'Dreamer\'s Quill', value: '+1 (lore discovery reward)', max: 1 },
  { name: 'Astral Codex Page', value: '+1 (codex completion)', max: 1 },
  { name: 'Tome of Lucid Visions', value: '+1 (rare quest reward)', max: 1 },
  { name: '13 Raid Boss DR Items', value: '+1 each (one per boss killed)', max: 13 },
]

const TEMPORARY = [
  { name: 'Potion of Dreams I-VI', value: '+1 to +6 for 7 minutes' },
  { name: 'Fortune/Luck of the Sea', value: '+0.25 per level (context-specific)' },
  { name: 'Silk Touch', value: '+0.75' },
  { name: 'Morning Fishing', value: '+0.5' },
  { name: 'Noon Mining', value: '+1.0' },
  { name: 'Night Combat', value: '+0.5' },
  { name: 'Full Moon (Fishing)', value: '+0.5' },
  { name: 'New Moon (Combat)', value: '+0.5' },
  { name: 'Harvest Moon', value: '+1.5 (full night event)' },
  { name: 'Rain + Fishing', value: '+0.5' },
  { name: 'Party Members Nearby', value: '+0.25 to +0.75' },
  { name: 'Biome Mastery', value: '+0.1 to +0.5' },
  { name: 'World Events', value: '+0.5 to +10.0' },
]

const GATES = [
  { tier: 'Ship', structures: 'Shipwrecks', dr: 1, color: '#78716C' },
  { tier: 'Vlg', structures: 'Villages', dr: 3, color: '#9CA3AF' },
  { tier: 'T1', structures: 'Ocean Ruins, Igloos, Trail Ruins, Ruined Portals', dr: 5, color: '#9CA3AF' },
  { tier: 'T2', structures: 'Desert Pyramid, Jungle Pyramid, Mineshaft, Dungeon, Vaults', dr: 7.5, color: '#4ADE80' },
  { tier: 'T3', structures: 'Trial Chambers, Nether Fortress, Ocean Monument, Ominous Vaults', dr: 10, color: '#60A5FA' },
  { tier: 'T4', structures: 'Stronghold, Woodland Mansion, Bastion Remnant', dr: 14, color: '#C084FC' },
  { tier: 'T5', structures: 'Ancient City, End City', dr: 17.5, color: '#FB923C' },
]

export default function DreamRate() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="DREAM RATE"
        badge="CORE MECHANIC"
        subtitle="The backbone of everything. Cap: 50. Formula: multiplier = 1 + (dreams / 35)."
      />

      <div className="max-w-4xl mx-auto px-6 py-16 space-y-12">
        {/* What is Dream Rate */}
        <ScrollReveal>
          <section className="font-['Crimson_Pro'] text-lg leading-relaxed">
            <h2 className="font-['Press_Start_2P'] text-[0.65rem] text-yellow-600 tracking-widest mb-6 uppercase">
              What is Dream Rate?
            </h2>
            <p className="text-stone-300">
              Dream Rate is a custom luck system that connects every system in Forevercraft.
              It determines crate quality, artifact rarity, structure accessibility, and companion encounters.
              At 35 Dreams, you get 2x bonus rolls on every crate. At 50, you're Dream Transcendent.
            </p>
            <div className="mt-6 bg-stone-900/60 border border-yellow-900/30 rounded p-4 text-center">
              <p className="font-['Press_Start_2P'] text-[0.5rem] text-yellow-400 mb-1">
                MULTIPLIER FORMULA
              </p>
              <p className="font-['Press_Start_2P'] text-lg text-yellow-300">
                1 + (dreams / 35)
              </p>
              <p className="text-stone-500 text-sm mt-2">
                At 35 Dreams = 2.0x · At 50 Dreams = 2.43x
              </p>
            </div>
          </section>
        </ScrollReveal>

        {/* Permanent Sources */}
        <ScrollReveal delay={100}>
          <Accordion title="PERMANENT SOURCES" defaultOpen>
            <div className="space-y-3">
              {PERMANENT.map(s => (
                <div key={s.name} className="flex items-center justify-between">
                  <span className="font-['Crimson_Pro'] text-stone-300">{s.name}</span>
                  <div className="flex items-center gap-3">
                    <div className="w-24 bg-stone-800 rounded-sm h-2 overflow-hidden">
                      <div className="h-full bg-yellow-500 rounded-sm" style={{ width: `${Math.min((s.max / 13) * 100, 100)}%` }} />
                    </div>
                    <span className="font-['Press_Start_2P'] text-[0.35rem] text-yellow-500 w-16 text-right">
                      {s.value.split('(')[0].trim()}
                    </span>
                  </div>
                </div>
              ))}
            </div>
          </Accordion>
        </ScrollReveal>

        {/* Temporary Sources */}
        <ScrollReveal delay={200}>
          <Accordion title="TEMPORARY SOURCES">
            <div className="space-y-2">
              {TEMPORARY.map(s => (
                <div key={s.name} className="flex items-center justify-between">
                  <span className="font-['Crimson_Pro'] text-stone-300">{s.name}</span>
                  <span className="font-['Press_Start_2P'] text-[0.35rem] text-stone-500">{s.value}</span>
                </div>
              ))}
            </div>
          </Accordion>
        </ScrollReveal>

        {/* Dream Gates */}
        <ScrollReveal delay={300}>
          <h2 className="font-['Press_Start_2P'] text-[0.65rem] text-yellow-600 tracking-widest mb-6 uppercase">
            Dream Gates
          </h2>
          <p className="font-['Crimson_Pro'] text-stone-400 mb-6">
            All structures are dream-gated. You need a minimum Dream Rate to access their loot.
          </p>
          <div className="space-y-3">
            {GATES.map(g => (
              <div key={g.tier} className="flex items-center gap-4 bg-stone-900/50 rounded border border-stone-800/50 p-3">
                <div
                  className="font-['Press_Start_2P'] text-[0.45rem] w-10 text-center shrink-0"
                  style={{ color: g.color }}
                >
                  {g.tier}
                </div>
                <div className="flex-1 bg-stone-800 rounded-sm h-3 overflow-hidden">
                  <div
                    className="h-full rounded-sm transition-all duration-1000"
                    style={{ width: `${(g.dr / 18) * 100}%`, backgroundColor: g.color }}
                  />
                </div>
                <div className="font-['Press_Start_2P'] text-[0.4rem] text-yellow-500 w-12 text-right shrink-0">
                  DR {g.dr}
                </div>
                <p className="font-['Crimson_Pro'] text-stone-400 text-sm hidden md:block w-48 shrink-0">
                  {g.structures}
                </p>
              </div>
            ))}
          </div>
        </ScrollReveal>
        {/* How It Affects Gameplay */}
        <ScrollReveal delay={400}>
          <Spoiler label="How Dream Rate affects every system in detail...">
            <div className="space-y-3 font-['Crimson_Pro'] text-sm text-stone-400">
              <p><span className="text-yellow-500 font-semibold">Crate Quality:</span> Dream Rate multiplies bonus rolls on every crate. At DR 35 = 2.0x rolls. At DR 50 = 2.43x. Higher DR means more items per crate and better tier chances.</p>
              <p><span className="text-yellow-500 font-semibold">Time-of-Day Bonuses:</span> Morning fishing +0.5, noon mining +1.0, night combat +0.5. These temporary bonuses stack with permanent DR.</p>
              <p><span className="text-yellow-500 font-semibold">Moon Phase Bonuses:</span> Full Moon fishing +0.5. New Moon combat +0.5 (also 2x patron/furia spawns). Harvest Moon (1/8 chance on Full Moon) = +1.5 DR + randomTickSpeed=15 for crop growth.</p>
              <p><span className="text-yellow-500 font-semibold">Weather:</span> Rain + fishing rod equipped = +0.5 temporary DR.</p>
              <p><span className="text-yellow-500 font-semibold">Enchantments:</span> Fortune, Silk Touch, Luck of the Sea, Looting each contribute +0.25/level (context-specific — only when relevant to the activity).</p>
              <p><span className="text-yellow-500 font-semibold">Check Your DR:</span> Use <code className="text-yellow-600 bg-stone-800 px-1 rounded">/trigger ec.dreams</code> in-game to see your full Dream Rate breakdown including constellation progress.</p>
            </div>
          </Spoiler>
        </ScrollReveal>
      </div>
    </div>
  )
}
