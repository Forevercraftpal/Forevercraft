import { useState } from 'react'
import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'

const IMAGES = [
  { src: '/gallery/guidestone.png', title: 'Guidestone Network', desc: 'Craftable teleportation waypoints' },
  { src: '/gallery/guidestone-red.png', title: 'Red Guidestone', desc: 'Nether-linked waypoint variant' },
  { src: '/gallery/guidestone-yellow.png', title: 'Yellow Guidestone', desc: 'Gold-tier waypoint variant' },
  { src: '/gallery/guildstone-blue.png', title: 'Azure Guidestone', desc: 'Azure waypoint variant' },
  { src: '/gallery/guildstone.png', title: 'Guild Stone', desc: 'The heart of your guild base' },
  { src: '/gallery/glyphforge.png', title: 'Glyphforge', desc: 'Permanent rune binding workstation' },
  { src: '/gallery/glyph-totem.png', title: 'Glyph Totem', desc: 'Activated glyph enchantment' },
  { src: '/gallery/hearthstone.png', title: 'Hearthstone', desc: 'Claim your home zone' },
  { src: '/gallery/artisan.png', title: 'Artisan Forge', desc: 'Spirit tool crafting station' },
  { src: '/gallery/gacha.png', title: 'Gacha Fountain', desc: 'The Fountain of Eternal Dreams' },
  { src: '/gallery/advantage-tree-1.png', title: 'Advantage Trees', desc: '13 skill trees with prestige' },
  { src: '/gallery/advantage-tree-2.png', title: 'Tree Progression', desc: 'Level up and unlock abilities' },
]

export default function Gallery() {
  const [lightbox, setLightbox] = useState<number | null>(null)

  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="GALLERY"
        badge="SCREENSHOTS"
        subtitle="A glimpse into the world of Forevercraft."
        particleColor="rgba(240, 195, 55, 0.3)"
      />

      <div className="max-w-[1400px] mx-auto px-8 py-16">
        <ScrollReveal>
          <p className="font-['Crimson_Pro'] text-xl text-stone-400 text-center mb-12 max-w-2xl mx-auto">
            Every system handcrafted. Every block placed with purpose.
            These are moments from inside Forevercraft.
          </p>
        </ScrollReveal>

        {/* Image Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {IMAGES.map((img, i) => (
            <ScrollReveal key={img.src} delay={i * 50}>
              <div
                className="group cursor-pointer rounded-lg overflow-hidden border border-stone-800/40 hover:border-yellow-800/60 transition-all duration-300"
                onClick={() => setLightbox(i)}
              >
                <div className="relative overflow-hidden">
                  <img
                    src={img.src}
                    alt={img.title}
                    className="w-full h-64 object-cover group-hover:scale-105 transition-transform duration-500 preserve-color"
                    loading="lazy"
                  />
                  <div className="absolute inset-0 bg-gradient-to-t from-stone-950/80 via-transparent to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300" />
                </div>
                <div className="p-4 bg-stone-900/50">
                  <h3 className="font-['Press_Start_2P'] text-[0.6rem] text-yellow-500 tracking-wider mb-1">
                    {img.title.toUpperCase()}
                  </h3>
                  <p className="font-['Crimson_Pro'] text-base text-stone-400">{img.desc}</p>
                </div>
              </div>
            </ScrollReveal>
          ))}
        </div>

        {/* Add More CTA */}
        <ScrollReveal delay={300}>
          <div className="text-center mt-16">
            <p className="font-['Crimson_Pro'] italic text-lg text-stone-500">
              More screenshots coming soon. Share yours with the community!
            </p>
          </div>
        </ScrollReveal>
      </div>

      {/* Lightbox */}
      {lightbox !== null && (
        <div
          className="fixed inset-0 bg-black/90 flex items-center justify-center z-[9999] cursor-pointer"
          onClick={() => setLightbox(null)}
        >
          <div className="relative max-w-[90vw] max-h-[90vh]">
            <img
              src={IMAGES[lightbox].src}
              alt={IMAGES[lightbox].title}
              className="max-w-full max-h-[85vh] object-contain rounded-lg preserve-color"
            />
            <div className="absolute bottom-0 left-0 right-0 p-4 bg-gradient-to-t from-black/80 to-transparent rounded-b-lg">
              <h3 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-500 mb-1">
                {IMAGES[lightbox].title.toUpperCase()}
              </h3>
              <p className="font-['Crimson_Pro'] text-base text-stone-300">{IMAGES[lightbox].desc}</p>
            </div>
            {/* Nav arrows */}
            {lightbox > 0 && (
              <button
                className="absolute left-4 top-1/2 -translate-y-1/2 text-white/60 hover:text-white text-4xl font-bold"
                onClick={(e) => { e.stopPropagation(); setLightbox(lightbox - 1) }}
              >
                ‹
              </button>
            )}
            {lightbox < IMAGES.length - 1 && (
              <button
                className="absolute right-4 top-1/2 -translate-y-1/2 text-white/60 hover:text-white text-4xl font-bold"
                onClick={(e) => { e.stopPropagation(); setLightbox(lightbox + 1) }}
              >
                ›
              </button>
            )}
            <button
              className="absolute top-4 right-4 text-white/60 hover:text-white text-2xl"
              onClick={() => setLightbox(null)}
            >
              ✕
            </button>
          </div>
        </div>
      )}
    </div>
  )
}
