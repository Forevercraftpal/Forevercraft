import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'

const MYTHICAL_SETS = [
  {
    name: 'Dragonmaster',
    pieces: 5,
    twoBonus: '+15% fire damage, fire immunity',
    fourBonus: '+30% melee damage, burning aura',
    fiveBonus: 'Dragon\'s Wrath — AOE fire blast on critical hits',
    theme: 'Forged in dragonfire, each piece pulses with draconic fury.',
  },
  {
    name: 'Titan\'s Shroud',
    pieces: 5,
    twoBonus: '+4 armor toughness, knockback resistance',
    fourBonus: '+20% max health, thorns damage',
    fiveBonus: 'Titan\'s Resolve — temporary invulnerability at low HP',
    theme: 'Hewn from the bones of fallen titans, impossibly heavy.',
  },
  {
    name: 'Verdant',
    pieces: 5,
    twoBonus: '+2 health regen, poison immunity',
    fourBonus: '+15% healing received, nature thorns',
    fiveBonus: 'Verdant Bloom — heal nearby allies on kill',
    theme: 'Living armor woven from enchanted vines and ancient bark.',
  },
  {
    name: 'Journey',
    pieces: 5,
    twoBonus: '+20% movement speed, feather falling',
    fourBonus: '+10% XP gain, reduced hunger drain',
    fiveBonus: 'Wayfinder — reveal nearby structures and ores',
    theme: 'Worn by those who have walked every road in every dimension.',
  },
  {
    name: 'Splendid',
    pieces: 5,
    twoBonus: '+1.0 luck, glowing aura',
    fourBonus: '+25% rare drop chance, charisma buff',
    fiveBonus: 'Radiance — blind nearby enemies periodically',
    theme: 'Armor of pure crystallized starlight. Blindingly beautiful.',
  },
  {
    name: 'Ender Dragon',
    pieces: 5,
    twoBonus: '+15% End damage, ender pearl efficiency',
    fourBonus: 'Levitation immunity, void damage reduction',
    fiveBonus: 'Void Walker — short-range teleport on sneak',
    theme: 'Scales shed by the Ender Dragon herself, still crackling with void energy.',
  },
  {
    name: 'Infernal',
    pieces: 5,
    twoBonus: 'Infernal Resilience — Resistance I',
    fourBonus: 'Infernal Eruption — AoE fire burst (horn)',
    fiveBonus: 'Infernal Wrath — Strength II',
    theme: 'Full armor toughness 3 on every piece. Lava-forged destruction.',
  },
  {
    name: 'Hero',
    pieces: 5,
    twoBonus: 'Heroic Presence — nearby allies gain Strength I',
    fourBonus: 'Hero\'s Stand — damage reduction at low HP',
    fiveBonus: 'Legend\'s Call — rally all nearby mobs to target you',
    theme: 'The armor of legends. Worn by those who answered every call.',
  },
]

const EXQUISITE_SETS = [
  { name: 'Fireforged', pieces: 4, theme: 'Forged in phoenix flame. 50% revive on death, fire immunity, lava walking.', twoBonus: 'Blazing Aura — Permanent Fire Resistance', fourBonus: 'Phoenix Rebirth — Auto-revive once per day' },
  { name: 'Ember', pieces: 4, theme: 'Nether-locked armor that burns brighter in the depths.', twoBonus: 'Fire damage boost in Nether', fourBonus: 'Ember Trail — leave fire in your wake' },
  { name: 'Ninja', pieces: 4, theme: 'Silent armor of shadow. Move unseen, strike without warning.', twoBonus: 'Speed boost while crouching', fourBonus: 'Smoke Bomb — vanish on taking damage' },
  { name: 'Cloaked Skull', pieces: 4, theme: 'Bone-white armor draped in dark cloth. Feared by the undead.', twoBonus: 'Undead flee on sight', fourBonus: 'Death\'s Embrace — damage boost at low HP' },
  { name: 'Space', pieces: 4, theme: 'Otherworldly plating from beyond the End. Defies gravity.', twoBonus: 'Reduced gravity, slow falling', fourBonus: 'Zero-G Burst — launch nearby mobs upward' },
]

const STANDARD_COUNT = 15

const TIER_CONFIG = {
  mythical: { label: 'MYTHICAL', color: 'text-yellow-400', border: 'border-yellow-600/50', bg: 'from-yellow-900/20 to-yellow-950/5', badge: 'bg-yellow-900/40 text-yellow-400' },
  exquisite: { label: 'EXQUISITE', color: 'text-purple-400', border: 'border-purple-600/50', bg: 'from-purple-900/20 to-purple-950/5', badge: 'bg-purple-900/40 text-purple-400' },
}

export default function ArmorSets() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="ARMOR SETS"
        badge="THE ARMORY"
        subtitle="28 complete armor sets with set bonuses. Collect pieces, unlock synergies, become unstoppable."
        particleColor="#a855f7"
      />

      {/* Overview */}
      <section className="max-w-[1400px] mx-auto px-8 py-16">
        <ScrollReveal>
          <div className="grid grid-cols-3 gap-4 max-w-2xl mx-auto mb-16">
            <div className="text-center rounded-3xl border border-yellow-700/40 bg-yellow-900/10 p-4">
              <p className="font-['Pixelify_Sans'] text-lg text-yellow-400">8</p>
              <p className="font-['Pixelify_Sans'] text-[0.55rem] text-yellow-700 mt-1">MYTHICAL (5pc)</p>
            </div>
            <div className="text-center rounded-3xl border border-purple-700/40 bg-purple-900/10 p-4">
              <p className="font-['Pixelify_Sans'] text-lg text-purple-400">5</p>
              <p className="font-['Pixelify_Sans'] text-[0.55rem] text-purple-700 mt-1">EXQUISITE (4pc)</p>
            </div>
            <div className="text-center rounded-3xl border border-stone-700/40 bg-stone-900/10 p-4">
              <p className="font-['Pixelify_Sans'] text-lg text-stone-400">{STANDARD_COUNT}</p>
              <p className="font-['Pixelify_Sans'] text-[0.55rem] text-stone-600 mt-1">STANDARD (4pc)</p>
            </div>
          </div>
        </ScrollReveal>

        {/* Mythical Sets */}
        <ScrollReveal>
          <div className="text-center mb-8">
            <h2 className="font-['Pixelify_Sans'] text-base text-yellow-400 mb-2">MYTHICAL ARMOR SETS</h2>
            <p className="font-['Crimson_Pro'] text-base text-stone-500">
              5-piece sets with three bonus tiers. Each piece grants +0.5 Dreams.
            </p>
          </div>
        </ScrollReveal>

        <div className="space-y-4 mb-16">
          {MYTHICAL_SETS.map((set, i) => (
            <ScrollReveal key={set.name} delay={i * 60}>
              <div className={`rounded-3xl border ${TIER_CONFIG.mythical.border} bg-gradient-to-r ${TIER_CONFIG.mythical.bg} p-5`}>
                <div className="flex flex-col md:flex-row md:items-start gap-4">
                  <div className="md:w-1/3">
                    <div className="flex items-center gap-2 mb-2">
                      <span className={`font-['Pixelify_Sans'] text-[0.6rem] px-2 py-1 rounded ${TIER_CONFIG.mythical.badge}`}>MYTHICAL</span>
                      <span className="font-['Crimson_Pro'] text-base text-stone-600">{set.pieces} pieces</span>
                    </div>
                    <h3 className="font-['Pixelify_Sans'] text-[0.65rem] text-yellow-400 mb-2">{set.name}</h3>
                    <p className="font-['Crimson_Pro'] text-base text-stone-500 italic">{set.theme}</p>
                  </div>
                  <div className="md:w-2/3 space-y-2">
                    <div className="flex items-start gap-2">
                      <span className="font-['Pixelify_Sans'] text-[0.55rem] text-yellow-700 shrink-0 mt-1">2pc</span>
                      <span className="font-['Crimson_Pro'] text-base text-stone-300">{set.twoBonus}</span>
                    </div>
                    <div className="flex items-start gap-2">
                      <span className="font-['Pixelify_Sans'] text-[0.55rem] text-yellow-600 shrink-0 mt-1">4pc</span>
                      <span className="font-['Crimson_Pro'] text-base text-stone-300">{set.fourBonus}</span>
                    </div>
                    <div className="flex items-start gap-2">
                      <span className="font-['Pixelify_Sans'] text-[0.55rem] text-yellow-400 shrink-0 mt-1">5pc</span>
                      <span className="font-['Crimson_Pro'] text-base text-stone-200">{set.fiveBonus}</span>
                    </div>
                  </div>
                </div>
              </div>
            </ScrollReveal>
          ))}
        </div>

        {/* Exquisite Sets */}
        <ScrollReveal>
          <div className="text-center mb-8">
            <h2 className="font-['Pixelify_Sans'] text-base text-purple-400 mb-2">EXQUISITE ARMOR SETS</h2>
            <p className="font-['Crimson_Pro'] text-base text-stone-500">4-piece sets with two bonus tiers.</p>
          </div>
        </ScrollReveal>

        <div className="grid md:grid-cols-2 gap-4">
          {EXQUISITE_SETS.map((set, i) => (
            <ScrollReveal key={set.name} delay={i * 80}>
              <div className={`rounded-3xl border ${TIER_CONFIG.exquisite.border} bg-gradient-to-r ${TIER_CONFIG.exquisite.bg} p-5 h-full`}>
                <div className="flex items-center gap-2 mb-2">
                  <span className={`font-['Pixelify_Sans'] text-[0.6rem] px-2 py-1 rounded ${TIER_CONFIG.exquisite.badge}`}>EXQUISITE</span>
                </div>
                <h3 className="font-['Pixelify_Sans'] text-[0.6rem] text-purple-400 mb-1">{set.name}</h3>
                <p className="font-['Crimson_Pro'] text-base text-stone-500 italic mb-3">{set.theme}</p>
                <div className="space-y-1.5">
                  <div className="flex items-start gap-2">
                    <span className="font-['Pixelify_Sans'] text-[0.55rem] text-purple-700 shrink-0 mt-1">2pc</span>
                    <span className="font-['Crimson_Pro'] text-base text-stone-300">{set.twoBonus}</span>
                  </div>
                  <div className="flex items-start gap-2">
                    <span className="font-['Pixelify_Sans'] text-[0.55rem] text-purple-400 shrink-0 mt-1">4pc</span>
                    <span className="font-['Crimson_Pro'] text-base text-stone-200">{set.fourBonus}</span>
                  </div>
                </div>
              </div>
            </ScrollReveal>
          ))}
        </div>

        {/* Standard note */}
        <ScrollReveal delay={200}>
          <div className="mt-12 text-center rounded-3xl border border-stone-800 bg-stone-900/30 p-6">
            <p className="font-['Pixelify_Sans'] text-[0.7rem] text-stone-500 mb-2">{STANDARD_COUNT} STANDARD SETS</p>
            <p className="font-['Crimson_Pro'] text-base text-stone-500">
              Standard 4-piece armor sets provide 2-piece and 4-piece set bonuses. Discover them through crafting, dungeon loot, and quest rewards throughout your adventure.
            </p>
          </div>
        </ScrollReveal>
      </section>
    </div>
  )
}
