import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'
import { useDownloadTracker } from '../hooks/useDownloadTracker'

const GITHUB_BASE = 'https://github.com/Forevercraftpal/Forevercraft/releases/download/v1.0-resourcepacks'

const PRIME_PACKS = [
  { name: 'Toodle Pack Prime (1-Day Cycle)', file: 'toodle-pack-prime-1day.zip', trackKey: 'rp-prime-1day', size: '58 MB', desc: 'Each texture season lasts 1 in-game day (~1 hour real time). Best for singleplayer or casual servers.', icon: '☀️', color: '#FBBF24' },
  { name: 'Toodle Pack Prime (2-Day Cycle)', file: 'toodle-pack-prime-2day.zip', trackKey: 'rp-prime-2day', size: '58 MB', desc: 'Each texture season lasts 2 in-game days (~2 hours real time). Longer seasons for a more gradual transition.', icon: '🌅', color: '#F59E0B' },
]

const SEASONAL_PACKS = [
  { name: 'Autumn', file: 'toodle-pack-autumn.zip', trackKey: 'rp-autumn', size: '57 MB', desc: 'Fall foliage, warm amber and orange tones, harvest atmosphere.', icon: '🍂', color: '#D97706' },
  { name: 'Winter', file: 'toodle-pack-winter.zip', trackKey: 'rp-winter', size: '57 MB', desc: 'Snow-covered landscapes, frosted textures, cold blue atmosphere.', icon: '❄️', color: '#38BDF8' },
  { name: 'Spring', file: 'toodle-pack-spring.zip', trackKey: 'rp-spring', size: '57 MB', desc: 'Fresh greens, blooming flowers, gentle pastel renewal.', icon: '🌸', color: '#4ADE80' },
  { name: 'Summer', file: 'toodle-pack-summer.zip', trackKey: 'rp-summer', size: '57 MB', desc: 'Vibrant saturated colors, lush verdant textures, golden sunlight.', icon: '🌻', color: '#FACC15' },
]

export default function ResourcePacks() {
  const { counts, trackDownload } = useDownloadTracker()

  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="RESOURCE PACKS"
        badge="TOODLE PACK"
        subtitle="Seasonal texture overhaul for Forevercraft. Animated client-side cycling or server-side per-season swapping."
        particleColor="rgba(251, 191, 36, 0.3)"
      />

      <div className="max-w-[1200px] mx-auto px-8 py-16">

        {/* ── Prime Packs (Client-Side) ──────────────── */}
        <ScrollReveal>
          <div className="mb-16">
            <h2 className="font-['Pixelify_Sans'] text-[0.75rem] text-yellow-500 tracking-widest mb-2">CLIENT-SIDE ANIMATED</h2>
            <p className="font-['Crimson_Pro'] text-stone-400 text-lg mb-8">
              No server setup needed. Drop into your resourcepacks folder. Textures cycle through all 4 seasons automatically using animated textures.
            </p>
            <div className="grid md:grid-cols-2 gap-6">
              {PRIME_PACKS.map(pack => (
                <div key={pack.file} className="sphere p-6" style={{ background: `radial-gradient(ellipse at 50% 20%, ${pack.color}08 0%, transparent 60%), var(--glass-bg)` }}>
                  <div className="flex items-center gap-3 mb-3">
                    <span className="text-2xl" style={{ filter: `drop-shadow(0 0 10px ${pack.color}40)` }}>{pack.icon}</span>
                    <h3 className="font-['Pixelify_Sans'] text-[0.55rem] text-yellow-400 leading-relaxed">{pack.name}</h3>
                  </div>
                  <p className="font-['Crimson_Pro'] text-stone-400 text-base mb-4">{pack.desc}</p>
                  <div className="flex items-center justify-between">
                    <span className="font-['Pixelify_Sans'] text-[0.55rem] text-stone-600">{pack.size}{counts[pack.trackKey] ? ` · ${counts[pack.trackKey]} downloads` : ''}</span>
                    <a
                      href={`${GITHUB_BASE}/${pack.file}`}
                      download
                      onClick={() => trackDownload(pack.trackKey)}
                      className="capsule px-6 py-2 bg-yellow-700 hover:bg-yellow-600 text-stone-950 font-['Pixelify_Sans'] text-[0.55rem] no-underline"
                    >
                      DOWNLOAD
                    </a>
                  </div>
                </div>
              ))}
            </div>
          </div>
        </ScrollReveal>

        {/* ── Seasonal Packs (Server-Side) ────────────── */}
        <ScrollReveal delay={100}>
          <div className="mb-16">
            <h2 className="font-['Pixelify_Sans'] text-[0.75rem] text-green-500 tracking-widest mb-2">SERVER-SIDE SEASONAL</h2>
            <p className="font-['Crimson_Pro'] text-stone-400 text-lg mb-8">
              Individual season packs for server operators. Swap the active pack when the in-game season changes for pixel-perfect visual sync with the datapack&apos;s 64-day year cycle.
            </p>
            <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-5">
              {SEASONAL_PACKS.map(pack => (
                <div key={pack.file} className="sphere p-5 text-center" style={{ background: `radial-gradient(ellipse at 50% 30%, ${pack.color}06 0%, transparent 60%), var(--glass-bg)` }}>
                  <div className="mb-3">
                    <span className="text-3xl" style={{ filter: `drop-shadow(0 0 10px ${pack.color}30)` }}>{pack.icon}</span>
                    <h3 className="font-['Pixelify_Sans'] text-[0.55rem] mt-2" style={{ color: pack.color }}>{pack.name.toUpperCase()}</h3>
                  </div>
                  <p className="font-['Crimson_Pro'] text-stone-500 text-sm text-center mb-4">{pack.desc}</p>
                  <div className="text-center">
                    <span className="font-['Pixelify_Sans'] text-[0.55rem] text-stone-600 block mb-2">{pack.size}{counts[pack.trackKey] ? ` · ${counts[pack.trackKey]}` : ''}</span>
                    <a
                      href={`${GITHUB_BASE}/${pack.file}`}
                      download
                      onClick={() => trackDownload(pack.trackKey)}
                      className="capsule px-5 py-2 border border-stone-700 hover:border-stone-500 font-['Pixelify_Sans'] text-[0.55rem] text-stone-400 hover:text-stone-200 no-underline bg-transparent"
                    >
                      DOWNLOAD
                    </a>
                  </div>
                </div>
              ))}
            </div>
          </div>
        </ScrollReveal>

        {/* ── Server Setup Guide ────────────────────── */}
        <ScrollReveal delay={200}>
          <div className="sphere p-8" style={{ background: 'radial-gradient(ellipse at 50% 10%, rgba(255,255,255,0.02) 0%, transparent 50%), rgba(15, 13, 22, 0.5)' }}>
            <h2 className="font-['Pixelify_Sans'] text-[0.75rem] text-yellow-500 tracking-widest mb-6">SERVER-SIDE TEXTURE SWITCHING GUIDE</h2>

            <div className="font-['Crimson_Pro'] text-stone-300 text-lg leading-relaxed space-y-6">
              <div>
                <h3 className="font-['Pixelify_Sans'] text-[0.55rem] text-stone-200 mb-2">HOW IT WORKS</h3>
                <p>
                  The Forevercraft datapack runs a 64-day year cycle with 4 seasons of 16 days each.
                  When a season transition occurs, the datapack sets <code className="text-yellow-400 bg-stone-800 px-1.5 py-0.5 rounded-full text-sm">#season_swap_pending ec.var</code> to <code className="text-yellow-400 bg-stone-800 px-1.5 py-0.5 rounded-full text-sm">1</code>.
                  Your server wrapper watches for this signal and swaps the active resource pack.
                </p>
              </div>

              <div>
                <h3 className="font-['Pixelify_Sans'] text-[0.55rem] text-stone-200 mb-2">SEASON TIMING</h3>
                <div className="overflow-x-auto">
                  <table className="w-full text-sm">
                    <thead>
                      <tr className="border-b border-stone-700">
                        <th className="text-left py-2 text-yellow-500 font-['Pixelify_Sans'] text-[0.55rem]">Season</th>
                        <th className="text-left py-2 text-yellow-500 font-['Pixelify_Sans'] text-[0.55rem]">ID</th>
                        <th className="text-left py-2 text-yellow-500 font-['Pixelify_Sans'] text-[0.55rem]">Days</th>
                        <th className="text-left py-2 text-yellow-500 font-['Pixelify_Sans'] text-[0.55rem]">Real Time</th>
                      </tr>
                    </thead>
                    <tbody className="text-stone-400">
                      <tr className="border-b border-stone-800"><td className="py-2">Autumn</td><td>0</td><td>0–15</td><td>~16 hours</td></tr>
                      <tr className="border-b border-stone-800"><td className="py-2">Winter</td><td>1</td><td>16–31</td><td>~16 hours</td></tr>
                      <tr className="border-b border-stone-800"><td className="py-2">Spring</td><td>2</td><td>32–47</td><td>~16 hours</td></tr>
                      <tr><td className="py-2">Summer</td><td>3</td><td>48–63</td><td>~16 hours</td></tr>
                    </tbody>
                  </table>
                </div>
              </div>

              <div>
                <h3 className="font-['Pixelify_Sans'] text-[0.55rem] text-stone-200 mb-2">WHAT YOU NEED</h3>
                <ol className="list-decimal list-inside space-y-1 text-stone-400">
                  <li>The <strong className="text-stone-200">Forevercraft datapack</strong> installed in your world</li>
                  <li>The <strong className="text-stone-200">4 seasonal resource packs</strong> (download above)</li>
                  <li>A <strong className="text-stone-200">server wrapper script</strong> to detect season changes and swap packs</li>
                  <li>A way to <strong className="text-stone-200">host the resource packs</strong> (direct download URL for each)</li>
                </ol>
              </div>

              <div>
                <h3 className="font-['Pixelify_Sans'] text-[0.55rem] text-stone-200 mb-2">SETUP STEPS</h3>
                <div className="space-y-4 text-stone-400">
                  <div>
                    <p className="text-stone-300 font-semibold">1. Host your seasonal packs</p>
                    <p>Upload all 4 ZIPs to a web server, CDN, or GitHub Releases. Note the SHA-1 hash of each file (<code className="text-yellow-400 bg-stone-800 px-1.5 py-0.5 rounded-full text-sm">shasum filename.zip</code>).</p>
                  </div>
                  <div>
                    <p className="text-stone-300 font-semibold">2. Create a swap script</p>
                    <p>A script that reads the current season ID, updates <code className="text-yellow-400 bg-stone-800 px-1.5 py-0.5 rounded-full text-sm">server.properties</code> with the correct resource-pack URL and SHA-1 hash, then restarts the server.</p>
                  </div>
                  <div>
                    <p className="text-stone-300 font-semibold">3. Detect the season change</p>
                    <p>Use RCON polling to check <code className="text-yellow-400 bg-stone-800 px-1.5 py-0.5 rounded-full text-sm">#season_swap_pending ec.var</code> every 30 seconds. When it&apos;s 1, read <code className="text-yellow-400 bg-stone-800 px-1.5 py-0.5 rounded-full text-sm">#season_id ec.var</code>, reset the flag, stop the server, swap the pack, and restart.</p>
                  </div>
                  <div>
                    <p className="text-stone-300 font-semibold">4. Set the initial pack</p>
                    <p>Before first launch, set <code className="text-yellow-400 bg-stone-800 px-1.5 py-0.5 rounded-full text-sm">require-resource-pack=true</code> in server.properties with the correct seasonal URL and hash.</p>
                  </div>
                </div>
              </div>

              <div className="border-t border-stone-800 pt-6">
                <h3 className="font-['Pixelify_Sans'] text-[0.55rem] text-cyan-400 mb-2">DON&apos;T WANT SERVER SETUP?</h3>
                <p className="text-stone-400">
                  Use <strong className="text-yellow-400">Toodle Pack Prime</strong> instead. It contains animated textures that automatically cycle
                  through all 4 seasons on the client side — no server restart needed. The trade-off is that cycling is tick-based
                  and won&apos;t be perfectly synced with the datapack&apos;s season system, but it provides a similar visual experience.
                </p>
              </div>
            </div>
          </div>
        </ScrollReveal>
      </div>
    </div>
  )
}
