import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'

const ASSETS = [
  { name: 'Icon (512x512)', file: '/icon.png', desc: 'Full icon with medieval text and dark background' },
  { name: 'OG Image (1200x630)', file: '/og-image.jpg', desc: 'Social media sharing image with title and stats' },
  { name: 'QR — PayPal', file: '/qr-paypal.png', desc: 'PayPal donation QR code' },
  { name: 'QR — CashApp', file: '/qr-cashapp.png', desc: 'CashApp donation QR code' },
  { name: 'QR — BMC', file: '/qr-bmc.png', desc: 'Buy Me a Coffee QR code' },
]

const QUICK_FACTS = [
  { label: 'Systems', value: '102' },
  { label: 'Artifacts', value: '408' },
  { label: 'Companions', value: '96' },
  { label: 'Spirit Weapons', value: '14' },
  { label: 'Raid Bosses', value: '14' },
  { label: 'Skill Trees', value: '13' },
  { label: 'Quests', value: '250' },
  { label: 'Lore Fragments', value: '904' },
  { label: 'Functions', value: '10,994' },
  { label: 'Total Files', value: '18,111' },
  { label: 'Minecraft Version', value: '1.21.11' },
  { label: 'Pack Format', value: '94.1' },
]

export default function PressKit() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="PRESS KIT"
        badge="FOR CREATORS"
        subtitle="Everything you need to feature Forevercraft. Logos, descriptions, facts, and downloadable assets."
        particleColor="rgba(218, 165, 32, 0.3)"
      />

      <div className="max-w-[1200px] mx-auto px-8 py-16">
        {/* Short Description */}
        <ScrollReveal>
          <div className="mb-16">
            <h2 className="font-['Press_Start_2P'] text-[0.75rem] text-yellow-500 tracking-widest mb-6">SHORT DESCRIPTION</h2>
            <div className="rounded-lg border border-stone-800/60 bg-stone-900/30 p-6">
              <p className="font-['Crimson_Pro'] text-lg text-stone-300 leading-relaxed">
                Forevercraft is a loot-driven fantasy overhaul for vanilla Minecraft with 408 artifacts,
                96 companions, 14 spirit weapons, 14 raid bosses, an infinite castle, 13 skill trees,
                250 quests, and 102 interconnected systems. No mods required.
                Every world has treasure. This one has dreams.
              </p>
              <button
                onClick={() => navigator.clipboard.writeText('Forevercraft is a loot-driven fantasy overhaul for vanilla Minecraft with 408 artifacts, 96 companions, 14 spirit weapons, 14 raid bosses, an infinite castle, 13 skill trees, 250 quests, and 102 interconnected systems. No mods required. Every world has treasure. This one has dreams.')}
                className="mt-4 px-4 py-2 rounded border border-yellow-800/40 hover:border-yellow-600/60 font-['Press_Start_2P'] text-[0.5rem] text-stone-500 hover:text-yellow-500 tracking-widest transition-colors"
              >
                COPY TO CLIPBOARD
              </button>
            </div>
          </div>
        </ScrollReveal>

        {/* One-Liner */}
        <ScrollReveal delay={50}>
          <div className="mb-16">
            <h2 className="font-['Press_Start_2P'] text-[0.75rem] text-yellow-500 tracking-widest mb-6">TAGLINE</h2>
            <div className="rounded-lg border border-stone-800/60 bg-stone-900/30 p-6">
              <p className="font-['Crimson_Pro'] text-2xl italic text-yellow-600/80">
                "Every world has treasure. This one has dreams."
              </p>
              <button
                onClick={() => navigator.clipboard.writeText('Every world has treasure. This one has dreams.')}
                className="mt-4 px-4 py-2 rounded border border-yellow-800/40 hover:border-yellow-600/60 font-['Press_Start_2P'] text-[0.5rem] text-stone-500 hover:text-yellow-500 tracking-widest transition-colors"
              >
                COPY TO CLIPBOARD
              </button>
            </div>
          </div>
        </ScrollReveal>

        {/* Quick Facts */}
        <ScrollReveal delay={100}>
          <div className="mb-16">
            <h2 className="font-['Press_Start_2P'] text-[0.75rem] text-yellow-500 tracking-widest mb-6">QUICK FACTS</h2>
            <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
              {QUICK_FACTS.map(fact => (
                <div key={fact.label} className="rounded-lg border border-stone-800/60 bg-stone-900/30 p-4 text-center">
                  <div className="font-['Press_Start_2P'] text-[1rem] text-yellow-400 mb-1">{fact.value}</div>
                  <div className="font-['Press_Start_2P'] text-[0.5rem] text-stone-500 tracking-widest">{fact.label.toUpperCase()}</div>
                </div>
              ))}
            </div>
          </div>
        </ScrollReveal>

        {/* Downloadable Assets */}
        <ScrollReveal delay={150}>
          <div className="mb-16">
            <h2 className="font-['Press_Start_2P'] text-[0.75rem] text-yellow-500 tracking-widest mb-6">DOWNLOADABLE ASSETS</h2>
            <div className="grid md:grid-cols-2 gap-4">
              {ASSETS.map(asset => (
                <div key={asset.name} className="rounded-lg border border-stone-800/60 bg-stone-900/30 p-5 flex items-center gap-4">
                  <img src={asset.file} alt={asset.name} className="w-16 h-16 rounded" style={{ imageRendering: 'pixelated' }} />
                  <div className="flex-1">
                    <h3 className="font-['Press_Start_2P'] text-[0.6rem] text-stone-200 mb-1">{asset.name}</h3>
                    <p className="font-['Crimson_Pro'] text-sm text-stone-500">{asset.desc}</p>
                  </div>
                  <a
                    href={asset.file}
                    download
                    className="px-3 py-2 rounded border border-yellow-800/40 hover:border-yellow-600/60 font-['Press_Start_2P'] text-[0.45rem] text-stone-500 hover:text-yellow-500 tracking-widest transition-colors no-underline"
                  >
                    DOWNLOAD
                  </a>
                </div>
              ))}
            </div>
          </div>
        </ScrollReveal>

        {/* Links */}
        <ScrollReveal delay={200}>
          <div className="mb-16">
            <h2 className="font-['Press_Start_2P'] text-[0.75rem] text-yellow-500 tracking-widest mb-6">OFFICIAL LINKS</h2>
            <div className="rounded-lg border border-stone-800/60 bg-stone-900/30 p-6 space-y-3">
              {[
                { label: 'Website', url: 'https://forevercraft.co' },
                { label: 'Player Guide', url: 'https://forevercraft.co/guide' },
                { label: 'Downloads', url: 'https://forevercraft.co/downloads' },
                { label: 'Donate', url: 'https://forevercraft.co/donate' },
                { label: 'Support', url: 'https://forevercraft.co/support' },
                { label: 'PayPal', url: 'https://www.paypal.com/ncp/payment/JK35QJPEJ9JH8' },
                { label: 'CashApp', url: 'https://cash.app/$emblazeforever' },
                { label: 'Buy Me a Coffee', url: 'https://buymeacoffee.com/forevercraft' },
              ].map(link => (
                <div key={link.label} className="flex items-center gap-4">
                  <span className="font-['Press_Start_2P'] text-[0.55rem] text-stone-400 w-32">{link.label}</span>
                  <a href={link.url} target="_blank" rel="noopener" className="font-['Crimson_Pro'] text-base text-yellow-600 hover:text-yellow-400 transition-colors">
                    {link.url}
                  </a>
                </div>
              ))}
            </div>
          </div>
        </ScrollReveal>

        {/* Contact */}
        <ScrollReveal delay={250}>
          <div className="text-center">
            <h2 className="font-['Press_Start_2P'] text-[0.75rem] text-yellow-500 tracking-widest mb-4">CONTACT</h2>
            <p className="font-['Crimson_Pro'] text-lg text-stone-400">
              For press inquiries, content creator access, or collaboration:
            </p>
            <p className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-500 mt-2">
              support@forevercraft.co
            </p>
          </div>
        </ScrollReveal>
      </div>
    </div>
  )
}
