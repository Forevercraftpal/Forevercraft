import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'

const QUEST_TIERS = [
  { name: 'Errand', color: 'text-stone-400', border: 'border-stone-600', bg: 'bg-stone-800/30', description: 'Simple tasks for new adventurers. Fetch, deliver, talk.' },
  { name: 'Task', color: 'text-green-400', border: 'border-green-700/50', bg: 'bg-green-900/15', description: 'More involved objectives. Light combat, exploration, gathering.' },
  { name: 'Contract', color: 'text-blue-400', border: 'border-blue-700/50', bg: 'bg-blue-900/15', description: 'Formal agreements with real stakes. Multi-step objectives, combat encounters.' },
  { name: 'Commission', color: 'text-purple-400', border: 'border-purple-700/50', bg: 'bg-purple-900/15', description: 'High-profile assignments from important figures. Dungeons, bosses, rare materials.' },
  { name: 'Expedition', color: 'text-orange-400', border: 'border-orange-700/50', bg: 'bg-orange-900/15', description: 'Multi-day journeys into uncharted territory. Chain objectives across biomes.' },
  { name: 'Heroic', color: 'text-yellow-400', border: 'border-yellow-600/60', bg: 'bg-yellow-900/15', description: 'Legendary undertakings that shape the world. Epic boss fights, rare artifact rewards.' },
]

const REPUTATION_LEVELS = [
  { name: 'Stranger', threshold: '0', color: 'text-stone-500', description: 'No one knows your name. Basic errands only.' },
  { name: 'Acquaintance', threshold: '50', color: 'text-stone-400', description: 'They recognize your face. Task-tier quests unlock.' },
  { name: 'Friend', threshold: '150', color: 'text-green-400', description: 'Villagers greet you warmly. Better prices, contract quests.' },
  { name: 'Ally', threshold: '400', color: 'text-blue-400', description: 'You are trusted. Commission quests, village defense missions.' },
  { name: 'Hero', threshold: '800', color: 'text-purple-400', description: 'Songs are sung. Expedition quests, unique dialogue.' },
  { name: 'Legend', threshold: '1500', color: 'text-yellow-400', description: 'Your name echoes through history. Heroic quests, legendary rewards.' },
]

const BOUNTY_TIERS = [
  { tier: 'I', target: 'Common Elite', time: '30 min', reward: 'Standard loot + reputation', color: 'text-green-400' },
  { tier: 'II', target: 'Rare Elite', time: '20 min', reward: 'Enhanced loot + bonus gold', color: 'text-blue-400' },
  { tier: 'III', target: 'Named Champion', time: '15 min', reward: 'Rare drops + major reputation', color: 'text-purple-400' },
  { tier: 'IV', target: 'Legendary Quarry', time: '10 min', reward: 'Artifact-tier loot + title', color: 'text-yellow-400' },
]

export default function Quests() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="QUESTS & BOUNTIES"
        badge="THE ADVENTURER'S PATH"
        subtitle="250 handcrafted quests across six tiers of challenge. Build your reputation from Stranger to Legend."
        particleColor="#a855f7"
      />

      {/* Quest Tiers */}
      <section className="max-w-6xl mx-auto px-6 py-16">
        <ScrollReveal>
          <div className="text-center mb-12">
            <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">QUEST TIERS</h2>
            <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
              250 quests organized into six tiers of ascending difficulty and reward. From simple errands to world-shaping heroic undertakings.
            </p>
          </div>
        </ScrollReveal>

        <div className="space-y-3 max-w-3xl mx-auto">
          {QUEST_TIERS.map((tier, i) => (
            <ScrollReveal key={tier.name} delay={i * 80}>
              <div className={`flex items-stretch rounded-lg border ${tier.border} ${tier.bg} overflow-hidden`}>
                <div className="w-1.5 bg-current opacity-40" style={{ color: tier.color.replace('text-', '').includes('stone') ? '#78716c' : undefined }} />
                <div className="flex items-center gap-4 p-4 flex-1">
                  <div className="flex items-center justify-center w-8 h-8 rounded bg-stone-900/80">
                    <span className={`font-['Press_Start_2P'] text-[0.5rem] ${tier.color}`}>{i + 1}</span>
                  </div>
                  <div>
                    <h3 className={`font-['Press_Start_2P'] text-[0.55rem] ${tier.color} mb-1`}>{tier.name}</h3>
                    <p className="font-['Crimson_Pro'] text-sm text-stone-400">{tier.description}</p>
                  </div>
                </div>
              </div>
            </ScrollReveal>
          ))}
        </div>
      </section>

      {/* Reputation */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-12">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">VILLAGE REPUTATION</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
                Your standing with each village determines what quests, prices, and opportunities are available. Climb the ladder from unknown outsider to living legend.
              </p>
            </div>
          </ScrollReveal>

          <div className="max-w-2xl mx-auto relative">
            {/* Vertical line */}
            <div className="absolute left-6 top-0 bottom-0 w-px bg-gradient-to-b from-stone-700 via-yellow-700/40 to-yellow-500/60" />

            <div className="space-y-4">
              {REPUTATION_LEVELS.map((level, i) => (
                <ScrollReveal key={level.name} delay={i * 80}>
                  <div className="flex items-start gap-5 pl-2">
                    <div className="relative z-10 flex items-center justify-center w-9 h-9 rounded-full bg-stone-900 border border-stone-700 shrink-0">
                      <span className={`font-['Press_Start_2P'] text-[0.4rem] ${level.color}`}>{i + 1}</span>
                    </div>
                    <div className="pt-1">
                      <div className="flex items-baseline gap-3 mb-1">
                        <h3 className={`font-['Press_Start_2P'] text-[0.55rem] ${level.color}`}>{level.name}</h3>
                        <span className="font-['Crimson_Pro'] text-xs text-stone-600">{level.threshold} rep</span>
                      </div>
                      <p className="font-['Crimson_Pro'] text-sm text-stone-400">{level.description}</p>
                    </div>
                  </div>
                </ScrollReveal>
              ))}
            </div>
          </div>
        </div>
      </section>

      {/* Bounty System */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-12">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">BOUNTY SYSTEM</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
                Named elite mobs spawn in biomes across the world. Hunt them down within the time limit for escalating rewards. Four tiers of increasing danger.
              </p>
            </div>
          </ScrollReveal>

          <div className="grid md:grid-cols-2 gap-4 max-w-3xl mx-auto">
            {BOUNTY_TIERS.map((bounty, i) => (
              <ScrollReveal key={bounty.tier} delay={i * 100}>
                <div className="rounded-lg border border-stone-800 bg-stone-900/40 p-5">
                  <div className="flex items-baseline gap-2 mb-2">
                    <span className={`font-['Press_Start_2P'] text-xs ${bounty.color}`}>TIER {bounty.tier}</span>
                    <span className="font-['Crimson_Pro'] text-xs text-stone-600">|</span>
                    <span className="font-['Crimson_Pro'] text-sm text-stone-500">{bounty.time} limit</span>
                  </div>
                  <p className={`font-['Press_Start_2P'] text-[0.45rem] ${bounty.color} mb-2`}>{bounty.target}</p>
                  <p className="font-['Crimson_Pro'] text-sm text-stone-400">{bounty.reward}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </section>
    </div>
  )
}
