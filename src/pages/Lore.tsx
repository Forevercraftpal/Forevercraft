import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'

const LORE_STATS = [
  { label: 'Fragments', value: '904', detail: 'Individual lore entries scattered across the world' },
  { label: 'Sets', value: '162', detail: 'Complete collections that tell cohesive stories' },
  { label: 'Dimensions', value: '4', detail: 'Overworld, Nether, End, and the Dream' },
  { label: 'Achievements', value: '767', detail: 'Tracked across 7 achievement tabs' },
]

const GUIDE_BOOKS = [
  { title: 'Chronicles of the First Age', author: 'Archivist Vael', description: 'The founding myths and creation stories of the world. How the four dimensions came to be.' },
  { title: 'The Wanderer\'s Codex', author: 'Dustwalker Maren', description: 'Tales from the roads between villages. Encounters with strange creatures and stranger people.' },
  { title: 'Whispers from the Deep', author: 'Abyssal Scholar Kael', description: 'Records of expeditions into the deepest caves. What lives below the bedrock.' },
  { title: 'Embers of the Nether', author: 'Pyrologist Senna', description: 'Studies of Nether ecology and the civilizations that once thrived in eternal flame.' },
  { title: 'The Dreamer\'s Journal', author: 'Unknown', description: 'Fragmentary notes from someone who claims to have walked the Dream. Half the pages are blank.' },
  { title: 'Songs of the End', author: 'Void Singer Ithiel', description: 'Poetry and prophecy from the End. Written in a script that hurts to read for too long.' },
]

const ACHIEVEMENT_TABS = [
  { name: 'Adventure', count: 142, color: 'text-green-400', description: 'Exploration, discovery, and survival milestones' },
  { name: 'Combat', count: 118, color: 'text-red-400', description: 'Kill counts, boss defeats, and martial feats' },
  { name: 'Crafting', count: 95, color: 'text-orange-400', description: 'Items created, recipes mastered, forge milestones' },
  { name: 'Social', count: 87, color: 'text-blue-400', description: 'Friendship, guild, party, and community goals' },
  { name: 'Collection', count: 134, color: 'text-purple-400', description: 'Pets, artifacts, armor sets, and lore fragments' },
  { name: 'Seasons', count: 76, color: 'text-amber-400', description: 'Seasonal events, moon phases, and world events' },
  { name: 'Secret', count: 115, color: 'text-yellow-400', description: 'Hidden achievements. Conditions unknown until unlocked.' },
]

const HEROS_JOURNEY_EYES = [
  'Eye of Origin', 'Eye of Flame', 'Eye of Frost', 'Eye of Storm',
  'Eye of Shadow', 'Eye of Bloom', 'Eye of Tide', 'Eye of Dust',
  'Eye of Iron', 'Eye of Silk', 'Eye of Heart', 'Eye of Void',
  'Eye of Dream', 'Eye of Time', 'Eye of Stars', 'Eye of Soul',
  'Eye of Eternity',
]

export default function Lore() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="LORE & LEGACY"
        badge="THE ARCHIVES"
        subtitle="904 fragments. 162 sets. Four dimensions of mystery. Every corner of this world has a story to tell."
        particleColor="#8b5cf6"
      />

      {/* Stats Overview */}
      <section className="max-w-6xl mx-auto px-6 py-16">
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-16">
          {LORE_STATS.map((stat, i) => (
            <ScrollReveal key={stat.label} delay={i * 80}>
              <div className="text-center rounded-lg border border-purple-900/30 bg-purple-950/15 p-5">
                <p className="font-['Press_Start_2P'] text-xl text-purple-400">{stat.value}</p>
                <p className="font-['Press_Start_2P'] text-[0.35rem] text-purple-700 mt-1 mb-2">{stat.label}</p>
                <p className="font-['Crimson_Pro'] text-xs text-stone-500">{stat.detail}</p>
              </div>
            </ScrollReveal>
          ))}
        </div>

        {/* Lore Collection */}
        <ScrollReveal>
          <div className="text-center mb-10">
            <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">LORE COLLECTION MAP</h2>
            <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
              Use <span className="font-mono text-purple-400 text-sm">/trigger lore_map</span> to open your collection tracker. See which fragments you have found and which sets remain incomplete.
            </p>
          </div>
        </ScrollReveal>

        <ScrollReveal delay={100}>
          <div className="max-w-xl mx-auto rounded-lg border border-purple-800/30 bg-purple-950/10 p-5 text-center mb-16">
            <p className="font-['Crimson_Pro'] text-sm text-stone-400">
              Fragments are found in structures, dropped by bosses, sold by rare merchants, and hidden in the environment. Some only appear during specific seasons or world events.
            </p>
          </div>
        </ScrollReveal>
      </section>

      {/* Guide Books */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">THE SIX ANECDOTES</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400">
                Six guide books written by scholars of the world. Each reveals a different facet of the lore.
              </p>
            </div>
          </ScrollReveal>

          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-4">
            {GUIDE_BOOKS.map((book, i) => (
              <ScrollReveal key={book.title} delay={i * 60}>
                <div className="rounded-lg border border-stone-800 bg-stone-900/40 p-5 h-full flex flex-col">
                  <h3 className="font-['Press_Start_2P'] text-[0.5rem] text-purple-400 mb-1 leading-relaxed">{book.title}</h3>
                  <p className="font-['Crimson_Pro'] text-xs text-stone-600 italic mb-3">by {book.author}</p>
                  <p className="font-['Crimson_Pro'] text-sm text-stone-400 flex-1">{book.description}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </section>

      {/* Hero's Journey Eyes */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">HERO'S JOURNEY EYES</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
                17 custom Ender Eyes, each tied to a pillar of the hero's journey. Collect them all to unlock the final portal.
              </p>
            </div>
          </ScrollReveal>

          <div className="flex flex-wrap justify-center gap-2 max-w-3xl mx-auto">
            {HEROS_JOURNEY_EYES.map((eye, i) => (
              <ScrollReveal key={eye} delay={i * 30}>
                <div className="rounded border border-stone-800 bg-stone-900/50 px-3 py-2">
                  <span className="font-['Press_Start_2P'] text-[0.35rem] text-purple-400">{eye}</span>
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </section>

      {/* Achievements */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">ACHIEVEMENTS</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
                767 achievements across 7 tabs. From the mundane to the impossible.
              </p>
            </div>
          </ScrollReveal>

          <div className="grid grid-cols-2 md:grid-cols-4 gap-3 max-w-3xl mx-auto">
            {ACHIEVEMENT_TABS.map((tab, i) => (
              <ScrollReveal key={tab.name} delay={i * 50}>
                <div className="rounded-lg border border-stone-800 bg-stone-900/30 p-4 text-center h-full">
                  <p className={`font-['Press_Start_2P'] text-sm ${tab.color}`}>{tab.count}</p>
                  <p className={`font-['Press_Start_2P'] text-[0.4rem] ${tab.color} mt-1 mb-2`}>{tab.name}</p>
                  <p className="font-['Crimson_Pro'] text-xs text-stone-500">{tab.description}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </section>
    </div>
  )
}
