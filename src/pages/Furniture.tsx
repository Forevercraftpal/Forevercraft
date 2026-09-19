import { Link } from 'react-router-dom'
import PageHero from '../components/layout/PageHero'
import { FURNITURE as F } from '../data/furniture'

// All The Furniture's home on the site. Like the licence page, it renders GENERATED data:
// src/data/furniture.ts is produced by tools/gen_site_furniture.py, which reads the piece count
// out of the shipped add-on and parses the control tables out of LISTING-DESCRIPTION.md — which
// was itself derived from the shipped main.js. The site therefore cannot advertise a button the
// pack does not have, which is the failure mode every hand-written feature list eventually hits.

const LABEL = "font-['Pixelify_Sans'] text-[0.62rem] tracking-[0.2em] text-cyan-400"

export default function Furniture() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="ALL THE FURNITURE"
        badge="FURNITURE PACK"
        subtitle={`${F.pieces} pieces you can actually arrange.`}
        particleColor="rgba(6, 182, 212, 0.18)"
      />

      <div className="max-w-[900px] mx-auto px-6 md:px-8 py-16">
        <div className="font-['Crimson_Pro'] text-lg text-stone-300 leading-relaxed space-y-6">
          <p className="text-xl text-stone-200">
            Place it, turn it, restyle it, tilt it, scale it, stack things on it — then pick it
            back up with every setting remembered.
          </p>
          <p className="text-stone-400">
            {F.editions.join(' · ')}. Same furniture, same controls, same menu, built from one
            source so the two editions cannot drift apart.
          </p>

          {/* The one thing a new player needs, before any table of buttons. */}
          <div className="rounded-2xl border border-cyan-900/40 bg-cyan-950/10 p-6 md:p-8 my-10 space-y-3">
            <p className={LABEL}>THE ONE THING TO REMEMBER</p>
            <p className="text-stone-200">{F.rule.use}</p>
            <p className="text-stone-200">{F.rule.manage}</p>
          </div>

          <h2 className={`${LABEL} block mt-12 mb-3`}>GETTING STARTED</h2>
          <ol className="list-decimal list-inside space-y-3 text-stone-400 marker:text-cyan-600">
            <li>
              Craft the <span className="text-stone-200">{F.catalogue.name}</span> —{' '}
              {F.catalogue.recipe}. This is the shop; everything comes from here.
            </li>
            <li>
              Pick a shelf, pick a piece. In Survival each piece lists its materials and takes them
              from your inventory. Woods are priced as a family — any six logs pay a six-log price,
              they don&apos;t have to match. In Creative everything is free.
            </li>
            <li>Place it, then sneak + right-click to open the Manage menu.</li>
          </ol>

          <h2 className={`${LABEL} block mt-14 mb-2`}>THE MANAGE MENU</h2>
          <p className="text-stone-400 mb-2">
            Buttons only appear on pieces that can do that thing, so no piece shows all of these at
            once.
          </p>
        </div>

        <div className="mt-8 space-y-10">
          {F.groups.map((g) => (
            <section key={g.title}>
              <h3 className="font-['Pixelify_Sans'] text-[0.62rem] tracking-[0.2em] text-stone-400 mb-4">
                {g.title.toUpperCase()}
              </h3>
              <div className="rounded-2xl border border-stone-800 divide-y divide-stone-800/80 overflow-hidden">
                {g.controls.map((c) => (
                  <div
                    key={c.label}
                    className="grid grid-cols-1 sm:grid-cols-[minmax(0,15rem)_1fr] gap-1 sm:gap-6 px-5 py-4 bg-stone-900/30"
                  >
                    <span className="font-['Crimson_Pro'] text-lg text-cyan-300/90">{c.label}</span>
                    <span className="font-['Crimson_Pro'] text-lg text-stone-400">{c.what}</span>
                  </div>
                ))}
              </div>
            </section>
          ))}
        </div>

        <div className="font-['Crimson_Pro'] text-lg text-stone-300 leading-relaxed space-y-6 mt-14">
          <h2 className={`${LABEL} block mb-3`}>SITTING &amp; RESTING</h2>
          <p className="text-stone-400">
            Right-click a chair, sofa, bench, stool, cushion, hammock or bed to sit. Sneak to stand
            up. Sitting is restful — you slowly heal while seated. Beds work by day as seats and by
            night as sleep: if enough of the players online are resting, the night passes.
          </p>

          <h2 className={`${LABEL} block mt-12 mb-3`}>GOOD TO KNOW</h2>
          <ul className="list-disc list-inside space-y-2 text-stone-400 marker:text-cyan-700">
            <li>Survival-friendly — everything is crafted from ordinary materials.</li>
            <li>No commands needed. Every control is in the menu.</li>
            <li>
              Works alongside other packs — furniture is its own entity and doesn&apos;t replace
              vanilla blocks.
            </li>
          </ul>

          <p className="pt-8 text-stone-500">
            <Link to="/downloads" className="text-cyan-400/90 hover:text-cyan-300 underline underline-offset-4">
              Downloads
            </Link>
            {' · '}
            <Link to="/license" className="text-cyan-400/90 hover:text-cyan-300 underline underline-offset-4">
              License
            </Link>
            {' · '}
            <Link to="/" className="text-stone-500 hover:text-stone-300 underline underline-offset-4">
              Both packs
            </Link>
          </p>
        </div>
      </div>
    </div>
  )
}
