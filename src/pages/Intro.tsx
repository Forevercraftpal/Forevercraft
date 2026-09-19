import { Link } from 'react-router-dom'
import { FURNITURE } from '../data/furniture'

// The site serves two packs now, so `/` stops being Forevercraft's front page and becomes a
// choice between them. Everything Forevercraft moved to /forevercraft untouched; nothing else
// about the site changed.
//
// The two panels are deliberately the same size, the same weight and the same shape. Forevercraft
// is the older and much larger project, and the temptation is to give it the bigger half — but a
// visitor arriving from a furniture store listing has no idea what Forevercraft is, and making
// their pack look like the side dish is exactly how they bounce.

type Panel = {
  to: string
  eyebrow: string
  title: string
  line: string
  facts: Array<string>
  accent: string
  glow: string
}

const PANELS: Array<Panel> = [
  {
    to: '/forevercraft',
    eyebrow: 'THE RPG',
    title: 'FOREVERCRAFT',
    line: 'A hundred and forty systems layered onto vanilla — quests, companions, artifacts, professions, raids, a story that runs for four hundred chapters.',
    facts: ['140+ systems', '408 artifacts · 102 companions', 'Java Edition'],
    accent: 'text-yellow-400',
    glow: 'hover:border-yellow-500/60 hover:shadow-[0_0_60px_rgba(251,191,36,0.10)]',
  },
  {
    to: '/furniture',
    eyebrow: 'THE FURNITURE',
    title: 'ALL THE FURNITURE',
    line: `${FURNITURE.pieces} pieces you can actually arrange. Place it, turn it, restyle it, tilt it, stack things on it — then pick it back up with every setting remembered.`,
    facts: [`${FURNITURE.pieces} pieces`, 'Survival-friendly · no commands', 'Java & Bedrock'],
    accent: 'text-cyan-400',
    glow: 'hover:border-cyan-500/60 hover:shadow-[0_0_60px_rgba(6,182,212,0.10)]',
  },
]

export default function Intro() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen flex flex-col justify-center">
      <div className="max-w-[1100px] w-full mx-auto px-6 py-20">
        <div className="text-center mb-14">
          <h1 className="font-['Pixelify_Sans'] text-2xl md:text-4xl text-metallic-gold mb-4">
            TWO PACKS
          </h1>
          <p className="font-['Crimson_Pro'] text-lg md:text-xl text-stone-400 max-w-xl mx-auto">
            Both free, both built here. Pick the one you came for.
          </p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          {PANELS.map((p) => (
            <Link
              key={p.to}
              to={p.to}
              className={`group flex flex-col gap-4 rounded-2xl border border-stone-800 bg-stone-900/40 p-8 md:p-10 no-underline transition-all duration-300 hover:-translate-y-1 ${p.glow}`}
            >
              <span className={`font-['Pixelify_Sans'] text-[0.55rem] tracking-[0.3em] ${p.accent}`}>
                {p.eyebrow}
              </span>
              <h2 className="font-['Pixelify_Sans'] text-base md:text-xl text-stone-100 leading-snug">
                {p.title}
              </h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 leading-relaxed grow">
                {p.line}
              </p>
              <ul className="flex flex-col gap-1 mt-2">
                {p.facts.map((f) => (
                  <li key={f} className="font-['Crimson_Pro'] text-base text-stone-500">
                    {f}
                  </li>
                ))}
              </ul>
              <span
                className={`font-['Pixelify_Sans'] text-[0.6rem] tracking-widest mt-4 ${p.accent} transition-transform duration-300 group-hover:translate-x-1`}
              >
                ENTER →
              </span>
            </Link>
          ))}
        </div>

        <p className="text-center mt-12 font-['Crimson_Pro'] text-base text-stone-600">
          <Link to="/downloads" className="text-stone-500 hover:text-stone-300 underline underline-offset-4">
            Downloads
          </Link>
          {' · '}
          <Link to="/license" className="text-stone-500 hover:text-stone-300 underline underline-offset-4">
            License
          </Link>
        </p>
      </div>
    </div>
  )
}
