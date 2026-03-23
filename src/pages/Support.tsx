import { useState } from 'react'
import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'

const BUG_CATEGORIES = [
  'Artifact / Item',
  'Companion / Pet',
  'Class / Weapon',
  'Skill Tree / Advantage',
  'Quest / Bounty',
  'Dungeon / Raid',
  'Cooking / Crafting',
  'GUI / Menu',
  'Housing / Guidestone',
  'World Event / Calendar',
  'Performance / Lag',
  'Other',
]

export default function Support() {
  const [category, setCategory] = useState('')
  const [title, setTitle] = useState('')
  const [description, setDescription] = useState('')
  const [steps, setSteps] = useState('')
  const [submitted, setSubmitted] = useState(false)

  const submitBugReport = () => {
    if (!title.trim() || !description.trim()) return

    const label = category || 'bug'
    const body = [
      `## Bug Report`,
      `**Category:** ${category || 'General'}`,
      ``,
      `### Description`,
      description,
      ``,
      steps ? `### Steps to Reproduce\n${steps}\n` : '',
      `---`,
      `*Submitted via [Forevercraft Support](https://forevercraft.co/support)*`,
    ].filter(Boolean).join('\n')

    const encodedTitle = encodeURIComponent(`[Bug] ${title}`)
    const encodedBody = encodeURIComponent(body)
    const encodedLabels = encodeURIComponent(label.toLowerCase().replace(/ \/ /g, ',').replace(/ /g, '-'))

    window.open(
      `https://github.com/Deiontre10/forevercraft/issues/new?title=${encodedTitle}&body=${encodedBody}&labels=bug,${encodedLabels}`,
      '_blank'
    )

    setSubmitted(true)
    setTimeout(() => {
      setSubmitted(false)
      setTitle('')
      setDescription('')
      setSteps('')
      setCategory('')
    }, 3000)
  }

  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="SUPPORT"
        badge="HELP CENTER"
        subtitle="Found a bug? Need help? We're here for you."
        particleColor="rgba(239, 68, 68, 0.2)"
      />

      <div className="max-w-[1100px] mx-auto px-8 py-16">
        {/* Bug Report Form */}
        <ScrollReveal>
          <div className="rounded-lg border border-red-900/40 bg-gradient-to-br from-red-950/10 to-transparent p-8 mb-12">
            <h2 className="font-['Press_Start_2P'] text-[0.85rem] text-red-400 mb-2">REPORT A BUG</h2>
            <p className="font-['Crimson_Pro'] text-lg text-stone-400 mb-8">
              Found something broken? Fill out the form below and it will be sent directly to our
              GitHub issue tracker where we can investigate and fix it.
            </p>

            <div className="space-y-6">
              {/* Category */}
              <div>
                <label className="font-['Press_Start_2P'] text-[0.6rem] text-stone-500 tracking-widest block mb-2">
                  CATEGORY
                </label>
                <select
                  value={category}
                  onChange={e => setCategory(e.target.value)}
                  className="w-full bg-stone-900 border border-stone-700 rounded px-4 py-3 font-['Crimson_Pro'] text-lg text-stone-200 focus:border-red-600 focus:outline-none transition-colors"
                >
                  <option value="">Select a category...</option>
                  {BUG_CATEGORIES.map(cat => (
                    <option key={cat} value={cat}>{cat}</option>
                  ))}
                </select>
              </div>

              {/* Title */}
              <div>
                <label className="font-['Press_Start_2P'] text-[0.6rem] text-stone-500 tracking-widest block mb-2">
                  SHORT SUMMARY *
                </label>
                <input
                  type="text"
                  value={title}
                  onChange={e => setTitle(e.target.value)}
                  placeholder="e.g. Dragon Fan ability doesn't trigger when sneaking"
                  className="w-full bg-stone-900 border border-stone-700 rounded px-4 py-3 font-['Crimson_Pro'] text-lg text-stone-200 placeholder-stone-600 focus:border-red-600 focus:outline-none transition-colors"
                />
              </div>

              {/* Description */}
              <div>
                <label className="font-['Press_Start_2P'] text-[0.6rem] text-stone-500 tracking-widest block mb-2">
                  WHAT HAPPENED? *
                </label>
                <textarea
                  value={description}
                  onChange={e => setDescription(e.target.value)}
                  placeholder="Describe the bug in detail. What did you expect to happen vs. what actually happened?"
                  rows={5}
                  className="w-full bg-stone-900 border border-stone-700 rounded px-4 py-3 font-['Crimson_Pro'] text-lg text-stone-200 placeholder-stone-600 focus:border-red-600 focus:outline-none transition-colors resize-y"
                />
              </div>

              {/* Steps to Reproduce */}
              <div>
                <label className="font-['Press_Start_2P'] text-[0.6rem] text-stone-500 tracking-widest block mb-2">
                  STEPS TO REPRODUCE (OPTIONAL)
                </label>
                <textarea
                  value={steps}
                  onChange={e => setSteps(e.target.value)}
                  placeholder="1. Equip the Dragon Fan&#10;2. Hold sneak and right-click&#10;3. Nothing happens"
                  rows={4}
                  className="w-full bg-stone-900 border border-stone-700 rounded px-4 py-3 font-['Crimson_Pro'] text-lg text-stone-200 placeholder-stone-600 focus:border-red-600 focus:outline-none transition-colors resize-y"
                />
              </div>

              {/* Submit */}
              <button
                onClick={submitBugReport}
                disabled={!title.trim() || !description.trim() || submitted}
                className={`px-8 py-3 rounded-lg font-['Press_Start_2P'] text-[0.7rem] tracking-wider transition-colors ${
                  submitted
                    ? 'bg-green-700 text-green-100 cursor-default'
                    : !title.trim() || !description.trim()
                      ? 'bg-stone-800 text-stone-600 cursor-not-allowed'
                      : 'bg-red-700 hover:bg-red-600 text-stone-100 cursor-pointer'
                }`}
              >
                {submitted ? 'REPORT SENT!' : 'SUBMIT BUG REPORT'}
              </button>

              <p className="font-['Crimson_Pro'] text-base text-stone-600">
                This will open a pre-filled GitHub issue. You'll need a free GitHub account to submit.
              </p>
            </div>
          </div>
        </ScrollReveal>

        {/* FAQ */}
        <ScrollReveal delay={100}>
          <div className="rounded-lg border border-stone-800 p-8 mb-12">
            <h2 className="font-['Press_Start_2P'] text-[0.85rem] text-yellow-400 mb-6">FAQ</h2>
            <div className="space-y-6">
              {[
                {
                  q: 'The datapack doesn\'t load / I get errors on startup',
                  a: 'Make sure you\'re running Minecraft Java Edition 1.21.11. Forevercraft requires pack format 94.1. Place the datapack in your world\'s datapacks folder, then run /reload.',
                },
                {
                  q: 'My Dream Rate isn\'t going up',
                  a: 'Open your Forevercraft Codex (book in inventory) and check the Dream Rate breakdown. DR comes from many sources — artifacts, companions, constellations, consumables, and more. Early game, focus on finding permanent DR items like Crystal of Dreams from bat drops.',
                },
                {
                  q: 'Can I use Forevercraft with other datapacks?',
                  a: 'Generally yes, but datapacks that modify the same vanilla mechanics (loot tables, mob behavior, etc.) may conflict. The modular download system lets you pick only the systems you want, reducing potential conflicts.',
                },
                {
                  q: 'How do I get companions?',
                  a: 'Companions can appear in any crate. Use the whistle to command them in battle. They have home biomes where they\'re more likely to appear — open crates in different biomes for variety.',
                },
                {
                  q: 'Is Forevercraft available for Bedrock Edition?',
                  a: 'Not currently. Forevercraft uses Java Edition datapack features that don\'t have Bedrock equivalents. A Bedrock port is not planned at this time.',
                },
                {
                  q: 'I want to support development — how?',
                  a: 'Visit our Buy Me a Coffee page! Even small donations help us keep building. We also have membership tiers with perks like early patch notes and custom lore contributions.',
                },
              ].map((faq, i) => (
                <div key={i}>
                  <h3 className="font-['Crimson_Pro'] text-lg text-stone-200 font-semibold mb-1">{faq.q}</h3>
                  <p className="font-['Crimson_Pro'] text-lg text-stone-400">{faq.a}</p>
                </div>
              ))}
            </div>
          </div>
        </ScrollReveal>

        {/* Contact */}
        <ScrollReveal delay={200}>
          <div className="rounded-lg border border-stone-800 p-8">
            <h2 className="font-['Press_Start_2P'] text-[0.85rem] text-yellow-400 mb-4">CONTACT US</h2>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
              <a
                href="https://github.com/Deiontre10/forevercraft/issues"
                target="_blank"
                rel="noopener noreferrer"
                className="rounded border border-stone-700 hover:border-yellow-800/60 p-5 text-center no-underline transition-colors"
              >
                <p className="font-['Press_Start_2P'] text-[0.6rem] text-stone-300 mb-2">GITHUB</p>
                <p className="font-['Crimson_Pro'] text-base text-stone-500">Bug reports & feature requests</p>
              </a>
              <a
                href="https://buymeacoffee.com/forevercraft"
                target="_blank"
                rel="noopener noreferrer"
                className="rounded border border-stone-700 hover:border-yellow-800/60 p-5 text-center no-underline transition-colors"
              >
                <p className="font-['Press_Start_2P'] text-[0.6rem] text-stone-300 mb-2">BUY ME A COFFEE</p>
                <p className="font-['Crimson_Pro'] text-base text-stone-500">Support & general inquiries</p>
              </a>
              <a
                href="https://forevercraft.co/guide"
                className="rounded border border-stone-700 hover:border-yellow-800/60 p-5 text-center no-underline transition-colors"
              >
                <p className="font-['Press_Start_2P'] text-[0.6rem] text-stone-300 mb-2">PLAYER GUIDE</p>
                <p className="font-['Crimson_Pro'] text-base text-stone-500">Step-by-step progression help</p>
              </a>
            </div>
          </div>
        </ScrollReveal>
      </div>
    </div>
  )
}
