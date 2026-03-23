import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'

const CREDITS = {
  creators: [
    { name: 'Ray Lee', role: 'Creator & Lead Developer' },
  ],
  tools: [
    { name: 'Claude', role: 'AI Development Partner' },
  ],
  family: [
    {
      name: 'Mamzeez',
      note: 'Thank you for all your help and support through this entire process. Couldn\'t have done it without you.',
    },
    {
      name: 'Nessa28',
      note: 'Thank you for being amazing and the most supportive wife ever. Thank you for always taking care of me and our son — even after too many late nights coding, bug fixing, and making edits. You are everything.',
    },
    {
      name: 'Redpanda300',
      note: 'Thank you for always supporting in your own way as my sister — even though you deserve a dispenser filled with Cave Sludge spamming above your house. You\'ve been there since the start of the journey, in real life and in the game.',
    },
    {
      name: 'Deiontre3',
      note: 'Thank you for always helping and supporting, and for being an enormous help building the website. You probably saved me 50+ hours of headaches trying to get it all working. Couldn\'t have done it without you, brother.',
    },
  ],
  supporters: [] as { name: string; tier: string }[],
}

export default function Credits() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="CREDITS"
        badge="THE DREAMERS"
        subtitle="The people who made Forevercraft possible."
        particleColor="rgba(255, 170, 0, 0.3)"
      />

      <div className="max-w-[900px] mx-auto px-8 py-16">
        {/* Creators */}
        <ScrollReveal>
          <div className="text-center mb-16">
            <h2 className="font-['Press_Start_2P'] text-[0.8rem] text-yellow-400 tracking-widest mb-8">CREATED BY</h2>
            {CREDITS.creators.map((person, i) => (
              <div key={i} className="mb-4">
                <p className="font-['Press_Start_2P'] text-[0.9rem] text-stone-200">{person.name}</p>
                <p className="font-['Crimson_Pro'] text-lg text-stone-500 italic">{person.role}</p>
              </div>
            ))}
          </div>
        </ScrollReveal>

        {/* AI Partner */}
        <ScrollReveal delay={100}>
          <div className="text-center mb-16">
            <h2 className="font-['Press_Start_2P'] text-[0.8rem] text-yellow-400 tracking-widest mb-8">BUILT WITH</h2>
            {CREDITS.tools.map((tool, i) => (
              <div key={i} className="mb-4">
                <p className="font-['Press_Start_2P'] text-[0.9rem] text-stone-200">{tool.name}</p>
                <p className="font-['Crimson_Pro'] text-lg text-stone-500 italic">{tool.role}</p>
              </div>
            ))}
          </div>
        </ScrollReveal>

        {/* Family */}
        <ScrollReveal delay={200}>
          <div className="mb-16">
            <h2 className="font-['Press_Start_2P'] text-[0.8rem] text-yellow-400 tracking-widest mb-8 text-center">THE ONES WHO MADE IT POSSIBLE</h2>
            <div className="space-y-6">
              {CREDITS.family.map((person, i) => (
                <div
                  key={i}
                  className="rounded-lg border border-yellow-800/30 bg-gradient-to-r from-yellow-950/10 to-transparent p-6"
                >
                  <p className="font-['Press_Start_2P'] text-[0.8rem] text-yellow-400 mb-3">{person.name}</p>
                  <p className="font-['Crimson_Pro'] text-lg text-stone-400 italic leading-relaxed">{person.note}</p>
                </div>
              ))}
            </div>
          </div>
        </ScrollReveal>

        {/* Supporters */}
        <ScrollReveal delay={300}>
          <div className="text-center mb-16">
            <h2 className="font-['Press_Start_2P'] text-[0.8rem] text-yellow-400 tracking-widest mb-4">SUPPORTERS</h2>
            <p className="font-['Crimson_Pro'] text-lg text-stone-500 italic mb-8">
              Thank you to everyone who believes in the dream.
            </p>

            {CREDITS.supporters.length > 0 ? (
              <div className="grid grid-cols-2 md:grid-cols-3 gap-4">
                {CREDITS.supporters.map((supporter, i) => (
                  <div
                    key={i}
                    className="rounded border border-stone-800 p-4 hover:border-yellow-800/40 transition-colors"
                  >
                    <p className="font-['Press_Start_2P'] text-[0.65rem] text-stone-300">{supporter.name}</p>
                    <p className="font-['Crimson_Pro'] text-base text-stone-600 mt-1">{supporter.tier}</p>
                  </div>
                ))}
              </div>
            ) : (
              <div className="rounded-lg border border-dashed border-yellow-800/30 p-10">
                <p className="font-['Crimson_Pro'] text-lg text-stone-600 italic">
                  Be the first name on the wall.
                </p>
                <a
                  href="https://buymeacoffee.com/forevercraft"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="inline-block mt-4 px-6 py-2.5 rounded-lg bg-yellow-600/90 hover:bg-yellow-500 text-stone-950 font-['Press_Start_2P'] text-[0.6rem] tracking-wider transition-colors no-underline"
                >
                  SUPPORT US
                </a>
              </div>
            )}
          </div>
        </ScrollReveal>

        {/* Closing */}
        <ScrollReveal delay={400}>
          <div className="text-center">
            <p className="font-['Crimson_Pro'] italic text-xl text-stone-500 max-w-2xl mx-auto">
              "Take your time, the committed win the race to glory, the quick fall into the traps the world has laid before you."
            </p>
          </div>
        </ScrollReveal>
      </div>
    </div>
  )
}
