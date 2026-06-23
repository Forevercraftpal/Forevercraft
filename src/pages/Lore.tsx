import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'
import Spoiler from '../components/ui/Spoiler'

const LORE_STATS = [
  { label: 'Fragments', value: '896', detail: 'Individual lore entries scattered across the world' },
  { label: 'Sets', value: '163', detail: 'Complete collections that tell cohesive stories' },
  { label: 'Dimensions', value: '4', detail: 'Overworld, Nether, End, and the Dream' },
  { label: 'Milestones', value: '505', detail: 'Personal milestones replacing the vanilla achievement system' },
]

const GUIDE_BOOKS = [
  { title: 'Elder\'s Anecdote', author: 'The Village Elder', description: 'A weathered tome of village wisdom. The history of settlements, their people, and the dreams that shaped them.', color: 'text-amber-400' },
  { title: 'Fisherman\'s Anecdote', author: 'Old Seadog', description: 'A salt-stained journal smelling of brine. Stories of catches that got away, ones that didn\'t, and the sea that remembers all.', color: 'text-cyan-400' },
  { title: 'Miner\'s Anecdote', author: 'The Old Prospector', description: 'A dusty tome from deep underground. Notes on veins, caverns, and the things that glitter in the dark when no one is watching.', color: 'text-stone-400' },
  { title: 'Wanderer\'s Anecdote', author: 'The Nomad Sage', description: 'A travel-worn journal found in structure crates. Tales of roads walked, ruins explored, and truths discovered too late.', color: 'text-yellow-400' },
  { title: 'Scholar\'s Anecdote', author: 'The Archivist', description: 'An ancient manuscript on enchantment and knowledge. Half the pages are written in a language no one speaks anymore.', color: 'text-purple-400' },
  { title: 'Beastkeeper\'s Anecdote', author: 'The Old Shepherd', description: 'A shepherd\'s notebook. Observations on creatures tamed and wild, and the quiet bonds between handler and beast.', color: 'text-green-400' },
]

// Personal milestones replace vanilla achievements
const MILESTONE_INFO = [
  { title: '505 Personal Milestones', description: 'Forevercraft replaces the vanilla achievement system entirely with personal milestones that track your journey across every system.' },
  { title: 'Cross-System Mastery', description: 'Milestones reward mastery across multiple systems: Renaissance Player, Dream Architect, Beast Master Chef, and more.' },
  { title: 'Hidden Discoveries', description: 'Many milestones are secret — their conditions are unknown until you unlock them.' },
  { title: 'Meta-Goal Titles', description: 'Milestone thresholds unlock permanent titles as you progress, culminating in Legend of Evercraft.' },
]

// Removed Hero's Journey Eyes — not in pack

export default function Lore() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="LORE & LEGACY"
        badge="THE ARCHIVES"
        subtitle="896 fragments. 163 sets. Four dimensions of mystery. Every corner of this world has a story to tell."
        particleColor="#8b5cf6"
      />

      {/* Stats Overview */}
      <section className="max-w-[1400px] mx-auto px-8 py-16">
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-16">
          {LORE_STATS.map((stat, i) => (
            <ScrollReveal key={stat.label} delay={i * 80}>
              <div className="text-center rounded-3xl border border-purple-900/30 bg-purple-950/15 p-5">
                <p className="font-['Pixelify_Sans'] text-xl text-purple-400">{stat.value}</p>
                <p className="font-['Pixelify_Sans'] text-[0.55rem] text-purple-700 mt-1 mb-2">{stat.label}</p>
                <p className="font-['Crimson_Pro'] text-base text-stone-500">{stat.detail}</p>
              </div>
            </ScrollReveal>
          ))}
        </div>

        {/* Lore Collection */}
        <ScrollReveal>
          <div className="text-center mb-10">
            <h2 className="font-['Pixelify_Sans'] text-base text-yellow-400 mb-3">LORE COLLECTION MAP</h2>
            <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
              Open the Lore Collection Map through the Forevercraft Codex to see which fragments you&apos;ve found and which sets remain incomplete. Color-coded by completion status, with up to 10 in-progress sets highlighted.
            </p>
          </div>
        </ScrollReveal>

        <ScrollReveal delay={100}>
          <div className="max-w-xl mx-auto rounded-3xl border border-purple-800/30 bg-purple-950/10 p-5 text-center mb-16">
            <p className="font-['Crimson_Pro'] text-base text-stone-400">
              Fragments are found in structures, dropped by bosses, sold by rare merchants, and hidden in the environment. Some only appear during specific seasons or world events.
            </p>
          </div>
        </ScrollReveal>
      </section>

      {/* Guide Books */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-[1400px] mx-auto px-8 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Pixelify_Sans'] text-base text-yellow-400 mb-3">THE SIX ANECDOTES</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400">
                Six guide books written by scholars of the world. Each reveals a different facet of the lore.
              </p>
            </div>
          </ScrollReveal>

          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-4">
            {GUIDE_BOOKS.map((book, i) => (
              <ScrollReveal key={book.title} delay={i * 60}>
                <div className="rounded-3xl border border-stone-800 bg-stone-900/40 p-5 h-full flex flex-col">
                  <h3 className="font-['Pixelify_Sans'] text-[0.7rem] text-purple-400 mb-1 leading-relaxed">{book.title}</h3>
                  <p className="font-['Crimson_Pro'] text-base text-stone-600 italic mb-3">by {book.author}</p>
                  <p className="font-['Crimson_Pro'] text-base text-stone-400 flex-1">{book.description}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </section>

      {/* Archaeology */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-[1400px] mx-auto px-8 py-16">
          <ScrollReveal>
            <div className="text-center mb-6">
              <h2 className="font-['Pixelify_Sans'] text-base text-yellow-400 mb-3">ARCHAEOLOGY</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
                Brush suspicious blocks to uncover ancient treasures. Archaeology has no Dream Rate lockout — anyone can dig for history at any stage of the game.
              </p>
            </div>
          </ScrollReveal>
        </div>
      </section>

      {/* Personal Milestones */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-[1400px] mx-auto px-8 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Pixelify_Sans'] text-base text-yellow-400 mb-3">PERSONAL MILESTONES</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
                Over 500 personal milestones replace the vanilla achievement system. Every milestone tells a story about your journey.
              </p>
            </div>
          </ScrollReveal>

          <div className="grid md:grid-cols-2 gap-4 max-w-3xl mx-auto">
            {MILESTONE_INFO.map((m, i) => (
              <ScrollReveal key={m.title} delay={i * 60}>
                <div className="rounded-3xl border border-stone-800 bg-stone-900/30 p-5 h-full">
                  <h3 className="font-['Pixelify_Sans'] text-[0.65rem] text-yellow-500 mb-2">{m.title}</h3>
                  <p className="font-['Crimson_Pro'] text-base text-stone-400">{m.description}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>

          {/* Spoiler: Deep Dive */}
          <Spoiler label="Deep dive: lore maps, achievement secrets, and meta-goals...">
            <div className="space-y-4">
              <div>
                <h3 className="font-['Pixelify_Sans'] text-[0.7rem] text-purple-400 tracking-widest mb-2">LORE COLLECTION STRUCTURE</h3>
                <p className="font-['Crimson_Pro'] text-base text-stone-400">
                  The 896 lore fragments form 163 complete sets spread across 4 dimensions (Overworld, Nether, End, and the Dream). Completing sets unlocks progress-based rewards that scale with your total collection.
                </p>
              </div>

              <div>
                <h3 className="font-['Pixelify_Sans'] text-[0.7rem] text-purple-400 tracking-widest mb-2">LORE COLLECTION MAP</h3>
                <p className="font-['Crimson_Pro'] text-base text-stone-400">
                  Access the Lore Collection Map through the Forevercraft Codex. Sets are color-coded by completion status, and up to 10 in-progress sets are highlighted so you can focus your search.
                </p>
              </div>

              <div>
                <h3 className="font-['Pixelify_Sans'] text-[0.7rem] text-purple-400 tracking-widest mb-2">HIDDEN ACHIEVEMENTS</h3>
                <p className="font-['Crimson_Pro'] text-base text-stone-400">
                  Many achievements across the 7 tabs are hidden — their conditions are unknown until you unlock them. The Secret tab (115 achievements) is entirely hidden by design.
                </p>
              </div>

              <div>
                <h3 className="font-['Pixelify_Sans'] text-[0.7rem] text-purple-400 tracking-widest mb-2">CROSS-SYSTEM ACHIEVEMENTS</h3>
                <p className="font-['Crimson_Pro'] text-base text-stone-400">
                  Special achievements reward mastery across multiple systems: Renaissance Player (multi-discipline), Dream Architect (building + lore), and Beast Master Chef (pets + cooking). These require deep engagement with different parts of the game.
                </p>
              </div>

              <div className="rounded border border-yellow-800/30 bg-yellow-950/10 p-4">
                <h3 className="font-['Pixelify_Sans'] text-[0.7rem] text-yellow-400 tracking-widest mb-2">META-GOALS</h3>
                <p className="font-['Crimson_Pro'] text-base text-stone-400">
                  Achievement milestones unlock meta-goal titles as you progress: starting at 200 achievements and culminating in the Legend of Evercraft title at 700. Each milestone grants a permanent title and cosmetic reward.
                </p>
              </div>
            </div>
          </Spoiler>
        </div>
      </section>

      {/* Easter egg — hidden anecdote */}
      <section className="max-w-2xl mx-auto px-6 pb-20">
        <div className="opacity-[0.15] hover:opacity-100 transition-opacity duration-1000">
          <p className="font-['Crimson_Pro'] italic text-[0.7rem] text-stone-600 text-center leading-relaxed">
            &quot;I met a traveler once, at the foot of a stronghold, who carried two swords where
            all others carried one. I asked him his class. He said nothing. I asked him his weapon&apos;s
            name. He whispered something — &apos;Nite&apos; — and then laughed, as if the word itself was
            a secret he wasn&apos;t supposed to tell. When I looked again, he was gone.
            His twin blade caught the dawn light as he vanished — dark orange, like the last ember
            of a fire you thought was dead. I have searched every codex since. The fourteenth
            class does not exist. And yet I saw it with my own eyes.&quot;
          </p>
          <p className="font-['Crimson_Pro'] italic text-[0.6rem] text-stone-700 text-center mt-2">
            — A Torn Page, found near the End Portal
          </p>
        </div>
      </section>
    </div>
  )
}
