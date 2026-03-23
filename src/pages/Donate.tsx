import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'

const DONATION_METHODS = [
  {
    name: 'Buy Me a Coffee',
    icon: '☕',
    description: 'One-time donations or monthly memberships. The easiest way to show support.',
    url: 'https://buymeacoffee.com/forevercraft',
    buttonText: 'SUPPORT ON BMAC',
    tiers: [
      { name: 'Dreamer', price: '$3/mo', perks: 'Name on the wall, early patch notes' },
      { name: 'Expeditionist', price: '$7/mo', perks: 'Custom lore piece in your chosen biome' },
      { name: 'Mythical Patron', price: '$15/mo', perks: 'Priority bug fixes, direct input on features' },
    ],
  },
  {
    name: 'PayPal',
    icon: '💳',
    description: 'Direct one-time donation via PayPal. Any amount helps keep the dream alive.',
    url: 'https://www.paypal.com/ncp/payment/JK35QJPEJ9JH8',
    buttonText: 'DONATE VIA PAYPAL',
    tiers: [],
  },
  {
    name: 'CashApp',
    icon: '💰',
    description: 'Quick and easy mobile donation.',
    url: 'https://cash.app/$emblazeforever',
    buttonText: 'SEND VIA CASHAPP',
    tiers: [],
  },
]

export default function Donate() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="SUPPORT FOREVERCRAFT"
        badge="DONATE"
        subtitle="Every donation helps us keep creating, updating, and expanding the dream."
        particleColor="rgba(255, 170, 0, 0.3)"
      />

      <div className="max-w-[1200px] mx-auto px-8 py-16">
        {/* Intro */}
        <ScrollReveal>
          <div className="text-center mb-16">
            <p className="font-['Crimson_Pro'] text-xl text-stone-400 max-w-3xl mx-auto leading-relaxed">
              Forevercraft is and always will be <span className="text-yellow-500 font-semibold">completely free</span>.
              No paywalls, no locked features, no premium tiers in-game. Every system, every artifact,
              every companion — free for everyone. If you'd like to help us keep building, any contribution
              means the world. Choose whichever method works best for you.
            </p>
          </div>
        </ScrollReveal>

        {/* What Your Support Funds */}
        <ScrollReveal delay={100}>
          <div className="mb-16 rounded-lg border border-yellow-800/30 bg-yellow-950/5 p-8">
            <h2 className="font-['Press_Start_2P'] text-[0.75rem] text-yellow-500 tracking-widest mb-6 text-center">
              WHERE YOUR SUPPORT GOES
            </h2>
            <div className="grid md:grid-cols-3 gap-6">
              {[
                { icon: '⚡', title: 'Development', desc: 'New systems, bosses, artifacts, and quality-of-life improvements. Every update is handcrafted.' },
                { icon: '🛡️', title: 'Maintenance', desc: 'Keeping up with Minecraft updates, fixing bugs, and ensuring compatibility with every new version.' },
                { icon: '🌍', title: 'Community', desc: 'Website hosting, documentation, support infrastructure, and everything that keeps the community thriving.' },
              ].map(item => (
                <div key={item.title} className="text-center">
                  <span className="text-3xl block mb-3">{item.icon}</span>
                  <h3 className="font-['Press_Start_2P'] text-[0.65rem] text-stone-200 mb-2">{item.title}</h3>
                  <p className="font-['Crimson_Pro'] text-base text-stone-400">{item.desc}</p>
                </div>
              ))}
            </div>
          </div>
        </ScrollReveal>

        {/* Donation Methods */}
        <div className="space-y-8">
          {DONATION_METHODS.map((method, i) => (
            <ScrollReveal key={method.name} delay={i * 80}>
              <div className="rounded-lg border border-stone-800/60 bg-stone-900/30 overflow-hidden">
                <div className="px-8 py-6 flex flex-col md:flex-row md:items-center md:justify-between gap-4">
                  <div className="flex items-center gap-4">
                    <span className="text-4xl">{method.icon}</span>
                    <div>
                      <h3 className="font-['Press_Start_2P'] text-[0.75rem] text-stone-100 mb-1">
                        {method.name.toUpperCase()}
                      </h3>
                      <p className="font-['Crimson_Pro'] text-base text-stone-400">
                        {method.description}
                      </p>
                    </div>
                  </div>
                  <a
                    href={method.url}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="inline-block px-6 py-3 rounded bg-yellow-600/90 hover:bg-yellow-500 text-stone-950 font-['Press_Start_2P'] text-[0.6rem] tracking-wider transition-colors no-underline text-center shrink-0"
                  >
                    {method.buttonText}
                  </a>
                </div>

                {/* Membership Tiers */}
                {method.tiers.length > 0 && (
                  <div className="px-8 pb-6 pt-2 border-t border-stone-800/30">
                    <h4 className="font-['Press_Start_2P'] text-[0.55rem] text-stone-500 tracking-widest mb-4">
                      MEMBERSHIP TIERS
                    </h4>
                    <div className="grid md:grid-cols-3 gap-4">
                      {method.tiers.map(tier => (
                        <div
                          key={tier.name}
                          className="rounded border border-stone-700/40 bg-stone-900/40 p-4"
                        >
                          <div className="flex items-baseline justify-between mb-2">
                            <span className="font-['Press_Start_2P'] text-[0.6rem] text-yellow-500">
                              {tier.name.toUpperCase()}
                            </span>
                            <span className="font-['Crimson_Pro'] text-base text-stone-300 font-semibold">
                              {tier.price}
                            </span>
                          </div>
                          <p className="font-['Crimson_Pro'] text-sm text-stone-400">
                            {tier.perks}
                          </p>
                        </div>
                      ))}
                    </div>
                  </div>
                )}
              </div>
            </ScrollReveal>
          ))}
        </div>

        {/* QR Codes */}
        <ScrollReveal delay={300}>
          <div className="mt-16">
            <h2 className="font-['Press_Start_2P'] text-[0.75rem] text-yellow-500 tracking-widest text-center mb-8">
              SCAN TO DONATE
            </h2>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-8 max-w-3xl mx-auto">
              {[
                { name: 'Buy Me a Coffee', img: '/qr-bmc.png', color: '#F0C337' },
                { name: 'PayPal', img: '/qr-paypal.png', color: '#0070E0' },
                { name: 'CashApp', img: '/qr-cashapp.png', color: '#00C853' },
              ].map(qr => (
                <div key={qr.name} className="text-center">
                  <div
                    className="rounded-lg border p-6 bg-stone-900/30 inline-block"
                    style={{ borderColor: `${qr.color}30` }}
                  >
                    <img
                      src={qr.img}
                      alt={`${qr.name} QR Code`}
                      className="w-48 h-48 mx-auto"
                      style={{ imageRendering: 'pixelated' }}
                    />
                  </div>
                  <p
                    className="font-['Press_Start_2P'] text-[0.6rem] mt-3 tracking-wider"
                    style={{ color: qr.color }}
                  >
                    {qr.name.toUpperCase()}
                  </p>
                </div>
              ))}
            </div>
          </div>
        </ScrollReveal>

        {/* Bottom Note */}
        <ScrollReveal delay={400}>
          <div className="mt-16 text-center">
            <p className="font-['Crimson_Pro'] italic text-xl text-stone-500 max-w-2xl mx-auto">
              "Whether you donate or not, you are part of this journey. Thank you for playing
              Forevercraft. That alone means everything."
            </p>
          </div>
        </ScrollReveal>
      </div>
    </div>
  )
}
