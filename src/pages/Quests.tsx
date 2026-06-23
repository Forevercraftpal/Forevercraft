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
  { name: 'Acquaintance', threshold: '100', color: 'text-stone-400', description: 'They recognize your face. Black Market barrel unlocks.' },
  { name: 'Friend', threshold: '250', color: 'text-green-400', description: 'Villagers greet you warmly. Better prices, contract-tier rewards.' },
  { name: 'Ally', threshold: '500', color: 'text-blue-400', description: 'You are trusted. Better rewards, Iron Golem assistance in combat.' },
  { name: 'Hero', threshold: '1,000', color: 'text-purple-400', description: 'Songs are sung. Noon gifts, max discounts, Village Defense Horn.' },
  { name: 'Legend', threshold: '2,500', color: 'text-yellow-400', description: 'Your name echoes through history. 2x noon gifts, Dreamer\'s Quill (+1 permanent DR), Hero of the Village II.' },
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
        subtitle="450+ authored quests — a six-tier village board plus seven questline tomes. Place a Book & Quill in a village lectern to spawn that village's own Quest Book."
        particleColor="#a855f7"
      />

      {/* Quest Tiers */}
      <section className="max-w-[1400px] mx-auto px-8 py-16">
        <ScrollReveal>
          <div className="text-center mb-12">
            <h2 className="font-['Pixelify_Sans'] text-base text-yellow-400 mb-3">QUEST TIERS</h2>
            <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
              Every village board carries 75 quests across six tiers of ascending difficulty and reward — from simple errands to world-shaping heroic undertakings — refreshed at dawn.
            </p>
          </div>
        </ScrollReveal>

        <div className="space-y-3 max-w-3xl mx-auto">
          {QUEST_TIERS.map((tier, i) => (
            <ScrollReveal key={tier.name} delay={i * 80}>
              <div className={`flex items-stretch rounded-3xl border ${tier.border} ${tier.bg} overflow-hidden`}>
                <div className="w-1.5 bg-current opacity-40" style={{ color: tier.color.replace('text-', '').includes('stone') ? '#78716c' : undefined }} />
                <div className="flex items-center gap-4 p-4 flex-1">
                  <div className="flex items-center justify-center w-8 h-8 rounded bg-stone-900/80">
                    <span className={`font-['Pixelify_Sans'] text-[0.7rem] ${tier.color}`}>{i + 1}</span>
                  </div>
                  <div>
                    <h3 className={`font-['Pixelify_Sans'] text-[0.55rem] ${tier.color} mb-1`}>{tier.name}</h3>
                    <p className="font-['Crimson_Pro'] text-base text-stone-400">{tier.description}</p>
                  </div>
                </div>
              </div>
            </ScrollReveal>
          ))}
        </div>
      </section>

      {/* Questline Tomes */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-[1400px] mx-auto px-8 py-16">
          <ScrollReveal>
            <div className="text-center mb-12">
              <h2 className="font-['Pixelify_Sans'] text-base text-yellow-400 mb-3">QUESTLINE TOMES</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
                Beyond the village board run seven dedicated questline tomes, a 16-beat Grand Chronicle that weaves them together, and a 20-quest Kingdom line that awaits Pioneers.
              </p>
            </div>
          </ScrollReveal>
          <div className="grid sm:grid-cols-2 lg:grid-cols-4 gap-3 max-w-4xl mx-auto">
            {[
              { name: "Adventurer's Tome", desc: 'The road, the wilds, the fight.' },
              { name: "Chemist's Tome", desc: 'Brewing and alchemy mastery.' },
              { name: "Smith's Tome", desc: 'Forging and metalwork.' },
              { name: "Cook's Tome", desc: 'The Campfire Kitchen path.' },
              { name: "Tinkerer's Tome", desc: 'Fusion and the Plinth.' },
              { name: "Handcrafter's Tome", desc: 'Decor, blueprints, building.' },
              { name: "Angler's Tome", desc: 'A 250-stage fishing journey all its own.' },
              { name: 'Grand Chronicle', desc: '16 beats weaving every tome together.' },
            ].map((t, i) => (
              <ScrollReveal key={t.name} delay={i * 60}>
                <div className="rounded-3xl border border-stone-800 bg-stone-900/40 p-4 h-full">
                  <h3 className="font-['Pixelify_Sans'] text-[0.55rem] text-yellow-500 mb-2 leading-relaxed">{t.name}</h3>
                  <p className="font-['Crimson_Pro'] text-base text-stone-400">{t.desc}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </section>

      {/* Reputation */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-[1400px] mx-auto px-8 py-16">
          <ScrollReveal>
            <div className="text-center mb-12">
              <h2 className="font-['Pixelify_Sans'] text-base text-yellow-400 mb-3">VILLAGE REPUTATION</h2>
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
                      <span className={`font-['Pixelify_Sans'] text-[0.6rem] ${level.color}`}>{i + 1}</span>
                    </div>
                    <div className="pt-1">
                      <div className="flex items-baseline gap-3 mb-1">
                        <h3 className={`font-['Pixelify_Sans'] text-[0.55rem] ${level.color}`}>{level.name}</h3>
                        <span className="font-['Crimson_Pro'] text-base text-stone-600">{level.threshold} rep</span>
                      </div>
                      <p className="font-['Crimson_Pro'] text-base text-stone-400">{level.description}</p>
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
        <div className="max-w-[1400px] mx-auto px-8 py-16">
          <ScrollReveal>
            <div className="text-center mb-12">
              <h2 className="font-['Pixelify_Sans'] text-base text-yellow-400 mb-3">BOUNTY SYSTEM</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
                Named elite mobs spawn in biomes across the world. Hunt them down within the time limit for escalating rewards. Four tiers of increasing danger.
              </p>
            </div>
          </ScrollReveal>

          <div className="grid md:grid-cols-2 gap-4 max-w-3xl mx-auto">
            {BOUNTY_TIERS.map((bounty, i) => (
              <ScrollReveal key={bounty.tier} delay={i * 100}>
                <div className="rounded-3xl border border-stone-800 bg-stone-900/40 p-5">
                  <div className="flex items-baseline gap-2 mb-2">
                    <span className={`font-['Pixelify_Sans'] text-base ${bounty.color}`}>TIER {bounty.tier}</span>
                    <span className="font-['Crimson_Pro'] text-base text-stone-600">|</span>
                    <span className="font-['Crimson_Pro'] text-base text-stone-500">{bounty.time} limit</span>
                  </div>
                  <p className={`font-['Pixelify_Sans'] text-[0.65rem] ${bounty.color} mb-2`}>{bounty.target}</p>
                  <p className="font-['Crimson_Pro'] text-base text-stone-400">{bounty.reward}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </section>

      {/* Artifact Bounty Board & Exile */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-[1400px] mx-auto px-8 py-16">
          <div className="grid md:grid-cols-2 gap-8">
            <ScrollReveal>
              <div className="rounded-3xl border border-yellow-800/30 bg-stone-900/40 p-6">
                <h3 className="font-['Pixelify_Sans'] text-[0.75rem] text-yellow-400 mb-3">ARTIFACT BOUNTY BOARD</h3>
                <p className="font-['Crimson_Pro'] text-base text-stone-400 leading-relaxed mb-3">
                  Found above the Quest Book in every village. Three daily artifact bounties rotate from
                  a pool of 25, displayed with floating UI and gold dust particles.
                </p>
                <p className="font-['Crimson_Pro'] text-base text-stone-400 leading-relaxed">
                  Claim a bounty, hunt the artifact, return for your reward. Per-player daily claims
                  prevent hoarding. A steady income of direction for collectors.
                </p>
              </div>
            </ScrollReveal>
            <ScrollReveal delay={100}>
              <div className="rounded-3xl border border-red-800/30 bg-stone-900/40 p-6">
                <h3 className="font-['Pixelify_Sans'] text-[0.75rem] text-red-400 mb-3">EXILE SYSTEM</h3>
                <p className="font-['Crimson_Pro'] text-base text-stone-400 leading-relaxed mb-3">
                  Betray a village badly enough and the consequences are real. Exile mechanics
                  strip your reputation and lock you out of quest boards, trade discounts, and
                  village services.
                </p>
                <p className="font-['Crimson_Pro'] text-base text-stone-400 leading-relaxed">
                  Redemption is possible — but the village remembers. Rebuilding trust takes
                  far longer than destroying it.
                </p>
              </div>
            </ScrollReveal>
          </div>
        </div>
      </section>
    </div>
  )
}
