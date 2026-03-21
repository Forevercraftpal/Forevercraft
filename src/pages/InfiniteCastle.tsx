import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'

const MECHANICS = [
  { label: 'Entry', value: 'Dungeon Key', detail: 'Consumed on entry. Found from world loot and quest rewards.' },
  { label: 'Runs / Day', value: '3', detail: 'Maximum three attempts per real-world day.' },
  { label: 'Floor Structure', value: '5 Waves', detail: 'Each floor consists of 5 combat waves of scaling difficulty.' },
  { label: 'Boss Floors', value: 'Every 10th', detail: 'Powerful boss encounters at floors 10, 20, 30, 40...' },
  { label: 'Raid Difficulty', value: 'Floor 10+', detail: 'Difficulty escalates to Raid tier from floor 10 onward.' },
  { label: 'Tracking', value: 'Highest Floor', detail: 'Your personal best floor is permanently tracked.' },
]

const BOSSES = [
  {
    floor: 20,
    name: 'Iron Phalanx',
    title: 'The Hoplite',
    description: 'A disciplined war construct that fights with shield wall formations. Summons Iron Sentinels and punishes reckless aggression.',
    color: 'text-stone-300',
    border: 'border-stone-600',
    bg: 'from-stone-800/30 to-stone-900/20',
  },
  {
    floor: 25,
    name: 'Crimson Bulwark',
    title: 'The Tank',
    description: 'An immovable fortress of living armor. Absorbs massive damage and retaliates with devastating ground slams that shatter the arena.',
    color: 'text-red-400',
    border: 'border-red-700/50',
    bg: 'from-red-900/20 to-red-950/10',
  },
]

const MILESTONES = [
  { floor: 10, reward: 'Bronze Dungeon Trophy', color: 'text-amber-600' },
  { floor: 20, reward: 'Silver Dungeon Trophy + Iron Phalanx Title', color: 'text-stone-400' },
  { floor: 30, reward: 'Gold Dungeon Trophy + Exclusive Pet', color: 'text-yellow-400' },
  { floor: 40, reward: 'Platinum Trophy + Rare Armor Piece', color: 'text-cyan-400' },
  { floor: 50, reward: 'Diamond Trophy + Castle Lord Title', color: 'text-blue-400' },
  { floor: 75, reward: 'Obsidian Trophy + Mythical Artifact', color: 'text-purple-400' },
  { floor: 100, reward: 'Eternal Trophy + Legendary Cosmetic Set', color: 'text-yellow-300' },
]

export default function InfiniteCastle() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="INFINITE CASTLE"
        badge="ENDLESS ASCENT"
        subtitle="An ever-escalating dungeon with no ceiling. How high can you climb before the castle claims you?"
        particleColor="#ef4444"
      />

      {/* Core Mechanics */}
      <section className="max-w-6xl mx-auto px-6 py-16">
        <ScrollReveal>
          <div className="text-center mb-12">
            <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">CORE MECHANICS</h2>
            <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
              Enter with a Dungeon Key. Fight through 5-wave combat floors. Face a boss every 10 floors. The difficulty never stops climbing.
            </p>
          </div>
        </ScrollReveal>

        <div className="grid md:grid-cols-3 gap-4 mb-16">
          {MECHANICS.map((m, i) => (
            <ScrollReveal key={m.label} delay={i * 60}>
              <div className="rounded-lg border border-red-900/30 bg-gradient-to-br from-red-950/20 to-stone-950 p-5 h-full">
                <p className="font-['Press_Start_2P'] text-[0.4rem] text-red-700 mb-1">{m.label}</p>
                <p className="font-['Press_Start_2P'] text-[0.6rem] text-red-400 mb-2">{m.value}</p>
                <p className="font-['Crimson_Pro'] text-sm text-stone-400">{m.detail}</p>
              </div>
            </ScrollReveal>
          ))}
        </div>

        {/* Floor Progression */}
        <ScrollReveal>
          <div className="text-center mb-8">
            <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">FLOOR PROGRESSION</h2>
          </div>
        </ScrollReveal>

        <ScrollReveal delay={100}>
          <div className="max-w-3xl mx-auto rounded-lg border border-stone-800 bg-stone-900/30 p-6 mb-16">
            <div className="space-y-3">
              <div className="flex items-center gap-3">
                <span className="font-['Press_Start_2P'] text-[0.4rem] text-stone-600 w-20 shrink-0">Floors 1–9</span>
                <div className="flex-1 h-2 rounded-full bg-stone-800">
                  <div className="h-full w-1/6 rounded-full bg-gradient-to-r from-green-700 to-green-600" />
                </div>
                <span className="font-['Crimson_Pro'] text-xs text-green-500">Normal</span>
              </div>
              <div className="flex items-center gap-3">
                <span className="font-['Press_Start_2P'] text-[0.4rem] text-stone-600 w-20 shrink-0">Floors 10–24</span>
                <div className="flex-1 h-2 rounded-full bg-stone-800">
                  <div className="h-full w-2/6 rounded-full bg-gradient-to-r from-yellow-700 to-yellow-600" />
                </div>
                <span className="font-['Crimson_Pro'] text-xs text-yellow-500">Raid</span>
              </div>
              <div className="flex items-center gap-3">
                <span className="font-['Press_Start_2P'] text-[0.4rem] text-stone-600 w-20 shrink-0">Floors 25–49</span>
                <div className="flex-1 h-2 rounded-full bg-stone-800">
                  <div className="h-full w-3/6 rounded-full bg-gradient-to-r from-orange-700 to-orange-500" />
                </div>
                <span className="font-['Crimson_Pro'] text-xs text-orange-500">Heroic</span>
              </div>
              <div className="flex items-center gap-3">
                <span className="font-['Press_Start_2P'] text-[0.4rem] text-stone-600 w-20 shrink-0">Floors 50+</span>
                <div className="flex-1 h-2 rounded-full bg-stone-800">
                  <div className="h-full w-full rounded-full bg-gradient-to-r from-red-700 to-red-500" />
                </div>
                <span className="font-['Crimson_Pro'] text-xs text-red-400">Nightmare</span>
              </div>
            </div>
          </div>
        </ScrollReveal>
      </section>

      {/* Named Bosses */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">NAMED BOSSES</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400">Powerful adversaries that guard key floors.</p>
            </div>
          </ScrollReveal>

          <div className="grid md:grid-cols-2 gap-6 max-w-3xl mx-auto mb-12">
            {BOSSES.map((boss, i) => (
              <ScrollReveal key={boss.name} delay={i * 100}>
                <div className={`rounded-lg border ${boss.border} bg-gradient-to-br ${boss.bg} p-6 h-full`}>
                  <p className="font-['Press_Start_2P'] text-[0.35rem] text-stone-600 mb-1">FLOOR {boss.floor}</p>
                  <h3 className={`font-['Press_Start_2P'] text-[0.7rem] ${boss.color} mb-1`}>{boss.name}</h3>
                  <p className="font-['Crimson_Pro'] text-sm text-stone-500 italic mb-3">{boss.title}</p>
                  <p className="font-['Crimson_Pro'] text-sm text-stone-400">{boss.description}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>

          {/* Dream Storm Crystals */}
          <ScrollReveal delay={200}>
            <div className="rounded-lg border border-purple-800/40 bg-gradient-to-r from-purple-900/20 to-purple-950/5 p-5 max-w-xl mx-auto text-center">
              <p className="font-['Press_Start_2P'] text-[0.5rem] text-purple-400 mb-2">DREAM STORM CRYSTALS</p>
              <p className="font-['Crimson_Pro'] text-sm text-stone-400 mb-1">
                Extraordinarily rare crafting materials that drop from floor 25 onward.
              </p>
              <p className="font-['Press_Start_2P'] text-[0.4rem] text-purple-600">1% DROP CHANCE</p>
            </div>
          </ScrollReveal>
        </div>
      </section>

      {/* Milestone Rewards */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">MILESTONE REWARDS</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400">Permanent rewards for reaching key floors.</p>
            </div>
          </ScrollReveal>

          <div className="max-w-2xl mx-auto space-y-3">
            {MILESTONES.map((m, i) => (
              <ScrollReveal key={m.floor} delay={i * 60}>
                <div className="flex items-center gap-4 rounded-lg border border-stone-800 bg-stone-900/30 p-4">
                  <div className="flex items-center justify-center w-12 h-12 rounded bg-stone-800/80 shrink-0">
                    <span className={`font-['Press_Start_2P'] text-[0.55rem] ${m.color}`}>{m.floor}</span>
                  </div>
                  <p className="font-['Crimson_Pro'] text-sm text-stone-300">{m.reward}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </section>
    </div>
  )
}
