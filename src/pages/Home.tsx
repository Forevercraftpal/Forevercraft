import { Link } from 'react-router-dom'
import ParticleField from '../components/effects/ParticleField'
import ScrollReveal from '../components/effects/ScrollReveal'
import StatCounter from '../components/ui/StatCounter'
import Card3D from '../components/ui/Card3D'
import { STATS } from '../data/constants'

const SYSTEM_CARDS = [
  { title: 'DREAM RATE', desc: 'The backbone of everything. A custom RNG system that ties your entire journey together.', icon: '✦', to: '/dream-rate', color: '#FBBF24' },
  { title: 'ARTIFACTS', desc: '408 unique items across six tiers — each with handcrafted abilities.', icon: '⚔️', to: '/artifacts', color: '#FB923C' },
  { title: 'SPIRIT WEAPONS', desc: '14 legendary endgame weapons with twin forms and metamorphosis.', icon: '🗡️', to: '/spirit-weapons', color: '#C084FC' },
  { title: 'COMPANIONS', desc: '106 companions that fight, level, evolve, and bond with you.', icon: '🐾', to: '/companions', color: '#4ADE80' },
  { title: 'CLASSES', desc: '14 weapon classes. Some are earned. One is hidden.', icon: '⚡', to: '/classes', color: '#60A5FA' },
  { title: 'RAID BOSSES', desc: '14 multi-phase bosses with puzzles, phases, and unique loot.', icon: '💀', to: '/raid-bosses', color: '#DC2626' },
  { title: 'SKILL TREES', desc: '14 advantage trees with 25 levels each, prestige, and synergies.', icon: '🌳', to: '/skill-trees', color: '#22C55E' },
  { title: 'ARMOR SETS', desc: '28 armor sets with 2-piece, 4-piece, and mythical 5-piece bonuses.', icon: '🛡️', to: '/armor-sets', color: '#9CA3AF' },
  { title: 'QUESTS', desc: '75 quests across 6 tiers. Village reputation. Patron bounties.', icon: '📜', to: '/quests', color: '#D97706' },
  { title: 'INFINITE CASTLE', desc: 'Endless escalating dungeon. Bosses every 10 floors. Dream Storm Crystals.', icon: '🏰', to: '/infinite-castle', color: '#78716C' },
  { title: 'COOKING', desc: '11 mastery categories. Seasonal recipes. Campfire crafting.', icon: '🍳', to: '/cooking', color: '#F59E0B' },
  { title: 'GUILDS & SOCIAL', desc: 'Guilds, parties, duels, buddy system, marriage, and family.', icon: '👥', to: '/guilds', color: '#0EA5E9' },
  { title: 'GACHA FOUNTAIN', desc: 'Dreamdust Fountain with pulls, Lucid currency, and the exclusive Crumb of Dreams.', icon: '🎰', to: '/gacha', color: '#A855F7' },
]

const DR_MILESTONES = [
  { dr: 0, title: 'Your journey begins', desc: 'Every block mined, every fish caught starts building your Dream Rate.' },
  { dr: 1, title: 'Shipwrecks unlock', desc: 'The first treasures become available. Your dreams are stirring.' },
  { dr: 3, title: 'Villages open', desc: 'Village quest boards, professions, and hidden bounty await.' },
  { dr: 5, title: 'Ruins & portals unlock', desc: 'Ocean ruins, igloos, trail ruins, and ruined portals yield their secrets.' },
  { dr: 7.5, title: 'Pyramids & dungeons', desc: 'Desert pyramids, jungle temples, mineshafts, and dungeons open their gates.' },
  { dr: 10, title: 'Fortresses & raids', desc: 'Trial chambers, nether fortresses, ocean monuments. Spirit Raids become available.' },
  { dr: 14, title: 'Strongholds & mansions', desc: 'The most dangerous overworld structures. Bastions, strongholds, woodland mansions.' },
  { dr: 17.5, title: 'Ancient City & End City', desc: 'The deepest, most dangerous structures. The rarest artifacts.' },
  { dr: 30, title: 'Night Terrors stalk you', desc: 'On new moon nights, a scaled mini-boss spawns near you. Glowing dark red.' },
  { dr: 50, title: 'Dream Transcendent', desc: 'Maximum Dream Rate. The world bends to your will. Everything drops.' },
]

export default function Home() {
  return (
    <div className="bg-stone-950 text-stone-200">
      {/* ── Hero ─────────────────────────────────────── */}
      <div className="relative min-h-[90vh] flex items-center justify-center border-b border-yellow-900/40 bg-[radial-gradient(ellipse_at_top,_#2a1a0a_0%,_#0a0906_70%)] overflow-hidden">
        <ParticleField count={40} />
        <div className="relative z-10 max-w-[1200px] mx-auto px-8 text-center">
          <img
            src="/icon.png"
            alt="Forevercraft"
            className="w-28 h-auto md:w-36 mx-auto mb-6 drop-shadow-[0_0_30px_rgba(200,140,40,0.4)] animate-[fade-in-up_0.8s_ease-out_both]"
            style={{ imageRendering: 'pixelated' }}
          />
          <h1 className="font-['Press_Start_2P'] text-4xl md:text-6xl text-metallic-gold mb-4 leading-tight animate-[fade-in-up_0.8s_ease-out_0.1s_both]">
            FOREVERCRAFT
          </h1>
          <p className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-700 tracking-[0.4em] mb-6 uppercase animate-[fade-in-up_0.8s_ease-out_0.2s_both]">
            A Fantasy Minecraft Overhaul
          </p>
          <p className="font-['Crimson_Pro'] italic text-xl md:text-2xl text-stone-400 mb-12 animate-[fade-in-up_0.8s_ease-out_0.4s_both]">
            Every world has loot. This one has dreams.
          </p>

          {/* Stat counters moved to bottom */}
        </div>

        {/* Scroll indicator */}
        <div className="absolute bottom-8 left-1/2 -translate-x-1/2 animate-bounce">
          <span className="text-yellow-800 text-2xl">⌄</span>
        </div>
      </div>

      {/* ── Systems Carousel ─────────────────────────── */}
      <section className="max-w-7xl mx-auto px-6 py-20">
        <ScrollReveal>
          <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-600 tracking-widest mb-3 text-center uppercase">
            Explore the Systems
          </h2>
          <p className="font-['Crimson_Pro'] italic text-stone-400 text-center mb-12 text-lg">
            102 interconnected systems. Every one handcrafted.
          </p>
        </ScrollReveal>

        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-5">
          {SYSTEM_CARDS.map((card, i) => (
            <ScrollReveal key={card.title} delay={i * 80}>
              <Link to={card.to} className="no-underline block h-full">
                <Card3D className="h-full rounded border border-yellow-900/40 bg-stone-900/50 p-6 hover:border-yellow-700/60 transition-colors">
                  <div className="flex items-start gap-3 mb-3">
                    <span className="text-2xl" style={{ filter: `drop-shadow(0 0 8px ${card.color}40)` }}>
                      {card.icon}
                    </span>
                    <h3 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-500 tracking-wider leading-relaxed pt-1">
                      {card.title}
                    </h3>
                  </div>
                  <p className="font-['Crimson_Pro'] text-stone-400 text-base leading-relaxed">
                    {card.desc}
                  </p>
                </Card3D>
              </Link>
            </ScrollReveal>
          ))}
        </div>
      </section>

      {/* ── Divider ──────────────────────────────────── */}
      <Divider />

      {/* ── Dream Rate Journey ───────────────────────── */}
      <section className="max-w-[1200px] mx-auto px-8 py-20">
        <ScrollReveal>
          <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-600 tracking-widest mb-3 text-center uppercase">
            The Dream Rate Journey
          </h2>
          <p className="font-['Crimson_Pro'] italic text-stone-400 text-center mb-14 text-lg">
            From zero to transcendent. The world opens as you do.
          </p>
        </ScrollReveal>

        <div className="relative">
          {/* Vertical line */}
          <div className="absolute left-6 md:left-1/2 top-0 bottom-0 w-px bg-gradient-to-b from-yellow-900/0 via-yellow-700/50 to-yellow-900/0" />

          {DR_MILESTONES.map((m, i) => (
            <ScrollReveal key={m.dr} delay={i * 100}>
              <div className={`relative flex items-start gap-6 mb-10 ${i % 2 === 0 ? 'md:flex-row' : 'md:flex-row-reverse'}`}>
                {/* Node */}
                <div className="absolute left-6 md:left-1/2 -translate-x-1/2 w-3 h-3 rounded-full bg-yellow-600 border-2 border-yellow-400 shadow-[0_0_12px_rgba(234,179,8,0.4)] z-10" />

                {/* Content */}
                <div className={`ml-14 md:ml-0 md:w-[45%] ${i % 2 === 0 ? 'md:pr-12 md:text-right' : 'md:pl-12'}`}>
                  <div className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-500 mb-1">
                    DR {m.dr}
                  </div>
                  <h3 className="font-['Press_Start_2P'] text-[0.55rem] text-stone-200 mb-2 leading-relaxed">
                    {m.title}
                  </h3>
                  <p className="font-['Crimson_Pro'] text-stone-400 text-base">
                    {m.desc}
                  </p>
                </div>
              </div>
            </ScrollReveal>
          ))}
        </div>
      </section>

      <Divider />

      {/* ── The Vision ───────────────────────────────── */}
      <section className="max-w-[1200px] mx-auto px-8 py-20 font-['Crimson_Pro'] text-lg leading-relaxed">
        <ScrollReveal>
          <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-600 tracking-widest mb-8 uppercase">
            The Vision
          </h2>
          <p className="text-stone-300">
            Forevercraft is a complete fantasy transformation of vanilla Minecraft — built over
            hundreds of hours, one function at a time. It doesn't replace the game you love.
            It gives it depth. A reason to keep mining after diamonds. A reason to fish in the rain.
            A reason to walk into a structure you've seen a hundred times and feel something new.
          </p>
          <p className="mt-4 text-stone-400">
            At its core is the{' '}
            <span className="text-yellow-500 font-semibold">Dream Rate</span> — a custom RNG
            system that connects every system. The artifacts you wear, the pets you raise, the
            constellations you complete, the time of day, even the phase of the moon — everything
            feeds into it. Start at zero. Reach for fifty. The world opens as you do.
          </p>
        </ScrollReveal>
      </section>

      <Divider />

      {/* ── Feature Highlights ───────────────────────── */}
      <section className="max-w-[1200px] mx-auto px-8 py-20 space-y-16 font-['Crimson_Pro'] text-lg leading-relaxed">
        <FeatureSection title="Spirit Weapons">
          <p className="text-stone-300">
            14 legendary weapons — one for each class. Dropped at 5% from raid bosses at the bottom
            of every structure. They start at Common tier and progress through seven stages all the
            way to Spirit. Each has two triggerable abilities, passive effects, and a metamorphosis
            system with unique requirements per weapon.
          </p>
          <p className="mt-4 text-stone-400">
            Seven of them have twin forms — a second weapon revealed by the Dream Storm Crystal.
            Firebrand and Aqualoch. Hollow Fangs and Ghost Fang. Dragonheart and Johan Shield.
            When both twins are held, they unlock their true power.
          </p>
        </FeatureSection>

        <FeatureSection title="Companions">
          <p className="text-stone-300">
            106 companions, each one different. A Moldwarp that makes you mine faster.
            A Claude that detects ores through walls. A Butterfly whose Dream Weaver
            ability scales your luck up to +3.0 at max level. A Golden Dragon that
            wraps you in resistance and fire immunity just by existing.
          </p>
          <p className="mt-4 text-stone-400">
            Companions level from 1 to 100. Feed them, build a relationship, reach{' '}
            <span className="text-yellow-500 font-semibold">Eternal Bond</span> and every ability
            hits harder. 37 mythical companions can evolve into Ascended forms with unique abilities.
          </p>
        </FeatureSection>

        <FeatureSection title="The World">
          <p className="text-stone-300">
            Days last three times longer than vanilla. Four seasons cycle across a 64-day year,
            each bringing its own resource pack. World Events sweep across the land —
            Starfall, The Dreaming, Abyssal Tremor, Aurora Bloom, Rift Echo,
            Dimensional Rift, Harmonic Convergence, Blood Moon, and Dream Surge — each with
            unique conditions and 60-second omen warnings.
          </p>
          <p className="mt-4 text-stone-400">
            Night Terrors stalk players past Dream Rate 30. On new moon nights, a scaled mini-boss
            spawns nearby — glowing dark red, fire-resistant, hunting. The higher your Dream Rate,
            the more the world notices you.
          </p>
        </FeatureSection>

        <FeatureSection title="Classes & Combat">
          <p className="text-stone-300">
            14 weapon classes let you commit to a fighting style. Rogues dual-wield daggers with
            auto-swing and stealth kills. Berserkers trade armor for raw power with Rage mode.
            Archers overcharge past full draw. Beastlords turn tamed animals into a war pack.
          </p>
          <p className="mt-4 text-stone-400">
            Thirteen classes are known. The fourteenth... is not listed in any codex, not spoken
            of by any profession villager. Some say The Gatekeeper in the Stronghold knows
            something about it. Most dismiss this as rumor.
          </p>
        </FeatureSection>

        <FeatureSection title="Crate & Loot System">
          <p className="text-stone-300">
            Seven sources feed one unified crate engine: mining, fishing, harvesting, mob kills,
            structures, quests, and achievements. Each crate spawns as an animated barrel with
            tier-colored particles — the higher the tier, the longer the anticipation builds.
          </p>
          <p className="mt-4 text-stone-400">
            Structure crates are per-player with 50-hour refresh timers. 25 biome-specific
            treasure pools. Every crate has a 20% Awakening Stone drop for weapon mastery.
            Dream Echoes mark the exact spot where a Mythical was found — clickable, drifting,
            permanent markers of your greatest moments.
          </p>
        </FeatureSection>

        <FeatureSection title="Professions & Villages">
          <p className="text-stone-300">
            12 custom villager professions populate villages: Bartender, Wise Wanderer, Artificer,
            Retired Adventurer, Expeditionist, Spelunker, Apiarist, Archer, Technician, Zookeeper,
            Nymph, and a daily featured profession with bonus trades. Villagers are named based
            on their biome.
          </p>
          <p className="mt-4 text-stone-400">
            Villages have their own specialization system with upgrade paths. Build reputation
            from Stranger to Legend. Higher rep means better rewards, better prices, and Iron Golem
            allegiance. Place a Book and Quill in a village lectern to spawn the quest book — each
            village has its own. Betray a village and face exile. Above the quest book floats the
            Artifact Bounty Board and the Black Market barrel.
          </p>
        </FeatureSection>

        <FeatureSection title="Housing & Life Systems">
          <p className="text-stone-300">
            Place a Hearthstone (lodestone) to claim a 64-block zone as your home. Five upgrade
            tiers with buffs from Regeneration to Resistance I. Auto-garden crop growth. Comfort
            scoring at 25-block milestones. Quick Stash with labeled barrels and one-button
            inventory sorting.
          </p>
          <p className="mt-4 text-stone-400">
            The{' '}
            <span className="text-yellow-500 font-semibold">Patina system</span> tracks how long
            you've worn each artifact. Over time, a fresh artifact becomes Worn, then Seasoned,
            then Storied, and finally Legendary — each stage adding flavor text and a stat bonus.
            16 armor trim materials each have unique per-piece effects and full-set bonuses.
          </p>
        </FeatureSection>

        <FeatureSection title="Exploration & Discovery">
          <p className="text-stone-300">
            894 discoverable lore fragments forming 162 sets across 4 dimensions. A Lore Collection
            Map shows your progress — accessible through the Forevercraft Codex. Personal milestones
            replace the vanilla achievement system entirely, tracking your journey from first steps to
            Legend of Evercraft. A personal journal tracks every region you've explored.
          </p>
          <p className="mt-4 text-stone-400">
            Forage nodes and prospect nodes scatter across the world for hand-gathering resources.
            The Codex system is a 751-function interactive encyclopedia tracking every artifact you've
            found. The Bestiary catalogs every mob encounter. Guidestones create a craftable
            teleportation network across dimensions.
          </p>
        </FeatureSection>

        <FeatureSection title="Affinity & Morality">
          <p className="text-stone-300">
            Every class builds affinity through use — the more you fight with a weapon type,
            the stronger your alignment grows. Per-class affinity totals scale your damage
            through daily-capped progression across 7 stages.
          </p>
          <p className="mt-4 text-stone-400">
            The <span className="text-yellow-500 font-semibold">Reaper system</span> tracks
            your moral choices. Kill villagers and iron golems to build Infamy — the world
            sends hunting parties after you. Trade peacefully to build Renown — bandits
            target you for your reputation. Both decay over time. Neither path is permanent.
            Your choices shape how the world responds to you.
          </p>
        </FeatureSection>

        <FeatureSection title="Competitions & Trials">
          <p className="text-stone-300">
            Friendly competitions run daily — timed challenges with leaderboards, personal bests,
            and lifetime win tracking. Head-to-head challenges let you test your skills against
            other players in 1v1 format.
          </p>
          <p className="mt-4 text-stone-400">
            <span className="text-yellow-500 font-semibold">Craft Trials</span> offer 6 categories
            of timed challenges (Mining, Farming, Fishing, Building, Lumber, Artisan) with 10 tiers
            each. Daily challenges give free entry without a Dungeon Key. Hard mode halves the timer
            and applies Mining Fatigue. Master all 6 to earn Grand Master status.
          </p>
        </FeatureSection>
      </section>

      {/* ── Closing ──────────────────────────────────── */}
      <section className="border-t border-yellow-900/30 bg-[radial-gradient(ellipse_at_bottom,_#1a1200_0%,_#0a0906_70%)]">
        <div className="max-w-3xl mx-auto px-6 py-20 text-center">
          <ScrollReveal>
            <p className="font-['Crimson_Pro'] italic text-2xl text-stone-400 leading-relaxed mb-8">
              "Take your time. The committed win the race to glory. The quick fall into the traps
              the world has laid before you."
            </p>
            <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-3 mt-12">
              <StatCounter end={STATS.totalArtifacts} label="Artifacts" />
              <StatCounter end={STATS.totalCompanions} label="Companions" />
              <StatCounter end={STATS.totalSpiritWeapons} label="Spirit Weapons" />
              <StatCounter end={STATS.totalQuests} label="Quests" />
              <StatCounter end={STATS.totalLoreFragments} label="Lore" />
              <StatCounter end={STATS.totalFunctions} label="Functions" />
            </div>
            <p className="font-['Press_Start_2P'] text-[0.6rem] text-yellow-800 tracking-widest mt-10">
              BUILT WITH LOVE · ONE FUNCTION AT A TIME
            </p>
            <Link
              to="/credits"
              className="inline-block mt-4 px-6 py-2 rounded border border-yellow-800/40 hover:border-yellow-600/60 font-['Press_Start_2P'] text-[0.55rem] text-stone-500 hover:text-yellow-500 tracking-widest no-underline transition-colors"
            >
              CREDITS
            </Link>
          </ScrollReveal>
        </div>
      </section>
    </div>
  )
}

function FeatureSection({ title, children }: { title: string; children: React.ReactNode }) {
  return (
    <ScrollReveal>
      <div className="flex items-center gap-4 mb-4">
        <div className="flex-1 h-px bg-yellow-900/30" />
        <h2 className="font-['Press_Start_2P'] text-[0.6rem] text-yellow-600 tracking-widest uppercase shrink-0">
          {title}
        </h2>
        <div className="flex-1 h-px bg-yellow-900/30" />
      </div>
      {children}
    </ScrollReveal>
  )
}

function Divider() {
  return (
    <div className="flex items-center gap-4 max-w-[1200px] mx-auto px-8">
      <div className="flex-1 h-px bg-yellow-900/30" />
      <img src="/icon.png" alt="" className="w-5 h-5 rounded opacity-40" style={{ imageRendering: 'pixelated' }} />
      <div className="flex-1 h-px bg-yellow-900/30" />
    </div>
  )
}
