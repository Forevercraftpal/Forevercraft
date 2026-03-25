import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'
import Spoiler from '../components/ui/Spoiler'

const PULL_OPTIONS = [
  { name: 'Single Pull', cost: '160 Forever Coins', description: 'One random item from the fountain pool. Could be anything from an Awakening Stone to a Mythical companion.' },
  { name: 'Multi Pull (x10)', cost: '1,600 Forever Coins', description: 'Ten items at once. Guaranteed Rare+ on the 10th pull. Better value, more chances at rare drops.' },
  { name: 'Spark Claim', cost: 'Free (50 pulls)', description: 'Every 50 pulls builds your Spark counter. Claim targeted rewards when your Spark is full.' },
  { name: 'Dreamdust Exchange', cost: 'Varies', description: 'Trade Dreamdust for specific items: Companion Treats, Awakening Stones, Tree Tokens, and more.' },
]

const REWARD_POOL = [
  { name: 'Dreamy Star', rarity: 'Choose ANY artifact (0.05%) — rarest gacha exclusive', color: 'text-yellow-400' },
  { name: 'Companion Crates', rarity: 'All tiers + gacha exclusives', color: 'text-green-400' },
  { name: 'Awakening Stones', rarity: 'All tiers', color: 'text-purple-400' },
  { name: 'Artifact Crates', rarity: 'All tiers', color: 'text-cyan-400' },
  { name: 'Glyphs', rarity: '13 rune types', color: 'text-red-400' },
  { name: 'Dreamdust Crystal', rarity: '+2.5 permanent DR (Mythical)', color: 'text-orange-400' },
  { name: 'Crumb of Dreams', rarity: '+1 DR for 30 minutes', color: 'text-pink-400' },
  { name: 'Coin of Lucidity', rarity: '2 free pulls — your roll back + one extra', color: 'text-blue-400' },
]

export default function Gacha() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="FOUNTAIN OF ETERNAL DREAMS"
        badge="THE GACHA"
        subtitle="The Fountain of Eternal Dreams awaits. Feed it Forever Coins and see what destiny reveals."
        particleColor="#a855f7"
      />

      {/* How It Works */}
      <section className="max-w-[1400px] mx-auto px-8 py-16">
        <ScrollReveal>
          <div className="text-center mb-12">
            <h2 className="font-['Press_Start_2P'] text-base text-yellow-400 mb-3">HOW IT WORKS</h2>
            <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
              Place a Fountain of Eternal Dreams in the world. Feed it Forever Coins earned from
              allowance, quests, crates and more! Each pull draws from a weighted reward pool —
              from common glyphs to the legendary Dreamy Star that lets you choose any artifact in the game.
            </p>
          </div>
        </ScrollReveal>

        <div className="grid md:grid-cols-2 gap-4 max-w-3xl mx-auto mb-16">
          {PULL_OPTIONS.map((opt, i) => (
            <ScrollReveal key={opt.name} delay={i * 80}>
              <div className="rounded-lg border border-purple-900/30 bg-purple-950/15 p-5 h-full">
                <div className="flex items-baseline justify-between mb-2">
                  <h3 className="font-['Press_Start_2P'] text-[0.7rem] text-purple-400">{opt.name}</h3>
                  <span className="font-['Press_Start_2P'] text-[0.55rem] text-yellow-500">{opt.cost}</span>
                </div>
                <p className="font-['Crimson_Pro'] text-base text-stone-400">{opt.description}</p>
              </div>
            </ScrollReveal>
          ))}
        </div>
      </section>

      {/* Reward Pool */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-[1400px] mx-auto px-8 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-base text-yellow-400 mb-3">REWARD POOL</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400">
                Every pull draws from this pool. Some items are common, others exceptionally rare.
              </p>
            </div>
          </ScrollReveal>

          <div className="grid grid-cols-2 md:grid-cols-4 gap-3 max-w-3xl mx-auto">
            {REWARD_POOL.map((reward, i) => (
              <ScrollReveal key={reward.name} delay={i * 50}>
                <div className="rounded-lg border border-stone-800 bg-stone-900/40 p-4 text-center h-full">
                  <h3 className={`font-['Press_Start_2P'] text-[0.6rem] ${reward.color} mb-2`}>{reward.name}</h3>
                  <p className="font-['Crimson_Pro'] text-base text-stone-500">{reward.rarity}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>

          <ScrollReveal delay={400}>
            <div className="mt-8 max-w-xl mx-auto text-center">
              <div className="rounded-lg border border-yellow-800/30 bg-yellow-950/10 p-4">
                <p className="font-['Press_Start_2P'] text-[0.6rem] text-yellow-500 mb-2">DREAMY STAR</p>
                <p className="font-['Crimson_Pro'] text-base text-stone-400">
                  The Dreamy Star (0.05% drop rate) is the rarest gacha-exclusive reward — it lets you choose ANY
                  artifact from the entire game. One-time use. The ultimate wish.
                </p>
              </div>
            </div>
          </ScrollReveal>
        </div>
      </section>

      {/* Currencies */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-[1400px] mx-auto px-8 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-base text-yellow-400 mb-3">CURRENCIES</h2>
            </div>
          </ScrollReveal>

          <div className="grid md:grid-cols-3 gap-4 max-w-3xl mx-auto">
            <ScrollReveal delay={0}>
              <div className="rounded-lg border border-yellow-900/30 bg-yellow-950/10 p-5 text-center h-full">
                <p className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-400 mb-2">FOUNTAIN COINS</p>
                <p className="font-['Crimson_Pro'] text-base text-stone-400">Primary pull currency. Earned from patron kills, dungeons, bounties, bosses, and pet activities.</p>
              </div>
            </ScrollReveal>
            <ScrollReveal delay={80}>
              <div className="rounded-lg border border-purple-900/30 bg-purple-950/10 p-5 text-center h-full">
                <p className="font-['Press_Start_2P'] text-[0.7rem] text-purple-400 mb-2">LUCID</p>
                <p className="font-['Crimson_Pro'] text-base text-stone-400">Bonus currency from pulls. Accumulates over time for guaranteed targeted rewards.</p>
              </div>
            </ScrollReveal>
            <ScrollReveal delay={160}>
              <div className="rounded-lg border border-cyan-900/30 bg-cyan-950/10 p-5 text-center h-full">
                <p className="font-['Press_Start_2P'] text-[0.7rem] text-cyan-400 mb-2">DREAMDUST</p>
                <p className="font-['Crimson_Pro'] text-base text-stone-400">Exchange currency for the Dreamdust shop. Buy specific items instead of gambling.</p>
              </div>
            </ScrollReveal>
          </div>

          <Spoiler label="Gacha mechanics in depth...">
            <div className="space-y-3 font-['Crimson_Pro'] text-base text-stone-400">
              <p><span className="text-yellow-500 font-semibold">Placement:</span> Place a Fountain of Eternal Dreams in the world. It becomes a permanent station anyone can use.</p>
              <p><span className="text-yellow-500 font-semibold">Pull Tracking:</span> Your total pulls are tracked per-player. The fountain remembers your history and pity counters.</p>
              <p><span className="text-yellow-500 font-semibold">Pity System:</span> 10-pull guarantees Rare+. 30 pulls without Ornate+ triggers soft pity (boosted rates). 50 pulls without Exquisite+ triggers hard pity (98% Exquisite).</p>
              <p><span className="text-yellow-500 font-semibold">Balance Check:</span> Use the fountain GUI to check your current Forever Coin balance before pulling.</p>
              <p><span className="text-yellow-500 font-semibold">Info Panel:</span> The [?] button in the fountain menu shows full rules and odds for transparency.</p>
            </div>
          </Spoiler>
        </div>
      </section>
    </div>
  )
}
