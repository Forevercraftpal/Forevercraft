import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'
import Spoiler from '../components/ui/Spoiler'

const BEDROCK_STATS = [
  { label: 'SYSTEMS', value: '130' },
  { label: 'SCRIPT FILES', value: '139' },
  { label: 'LINES OF CODE', value: '41,994' },
  { label: 'ENTITY DEFS', value: '98' },
]

const ARCHITECTURE = [
  {
    title: 'Script API Powered',
    icon: '⚡',
    desc: 'Built entirely on Minecraft\'s official Script API — no experimental toggles, no resource pack hacks. Pure @minecraft/server 2.6.0 and @minecraft/server-ui 1.3.0.',
  },
  {
    title: 'Form-Based Menus',
    icon: '📋',
    desc: 'All GUIs use ActionFormData and ModalFormData instead of entity-based spatial menus. Faster, more reliable, works on console and mobile.',
  },
  {
    title: 'Tick-Routed Architecture',
    icon: '🔄',
    desc: '8 tick tiers (1/2/5/20/40/60/100/1200) group systems by priority. Combat-critical runs every tick. Seasonal cycles run every minute. Smooth on all devices.',
  },
  {
    title: 'EventBridge Pub/Sub',
    icon: '🔗',
    desc: 'Central event system connects all 129 modules. Systems talk to each other without direct imports. Add or remove systems cleanly.',
  },
  {
    title: 'StorageManager',
    icon: '💾',
    desc: 'Cached dynamic property wrapper for player, entity, and world data. 900+ keys per player. Persistent across sessions, fast on read.',
  },
  {
    title: 'Cross-Platform',
    icon: '🎮',
    desc: 'Runs identically on Windows 10/11, Xbox, PlayStation, Nintendo Switch, iOS, and Android. No platform-specific code.',
  },
]

const PARITY_SECTIONS = [
  {
    category: 'Combat',
    count: 14,
    systems: '14 Spirit Weapons, Dual Swordsman, Weapon Mastery, Armor Mastery, Combat Combos, Arrows, Shields, Trim Abilities, Artifact Abilities (408), Healers (12), Mobs (6-tier Patrons), Health Bars, Tamed Protection, Class Detection',
  },
  {
    category: 'Companions',
    count: 9,
    systems: '96 Companions, Companion Evolution (6 forms), Pet Duels, Fox/Ocelot Taming, Tamed Protection with Combat AI, Relationship System, Catalogue, Treats, Rival Pets',
  },
  {
    category: 'Progression',
    count: 10,
    systems: 'Advantage Trees (13), Class Affinity (14 classes), Dream Rate, Constellations (10), Biome Mastery (25), Milestones (100 personal + 34 realm), Achievements, Patina Aging, Claim Rewards, Daily Challenges',
  },
  {
    category: 'Economy',
    count: 8,
    systems: 'Forever Coins, Gacha Fountain (pity system), Black Market, Bounty Board, Guild Donations, Quick-Sell, Dreamdust Currency, Convergence Events',
  },
  {
    category: 'Crafting',
    count: 10,
    systems: 'Cooking (11 categories), Forging, Inscription Stones, Runes (13 glyphs), Transmutation, Glyphforge, Resource Nodes, Craftforever (6 spirit tools), Grand Forge Gauntlet, Artisan Forge',
  },
  {
    category: 'World',
    count: 14,
    systems: '13 Raid Bosses, World Bosses (11), World Events (5+), Dungeon System, Castle Dungeon, Heist Gauntlets, Dreaming Realm, Day Cycle, Moon Phases (8), Seasons (4), Biome Mastery, Night Terrors, Encounters, Convergence',
  },
  {
    category: 'Social',
    count: 12,
    systems: 'Friends, Guilds, Party System (9 combos), Duels, Competitions, Reputation (Infamy/Renown), Marriage, Family, Pet Duels, Mount Training, Campfire Stories, Exile',
  },
  {
    category: 'Quality of Life',
    count: 10,
    systems: 'Phoenix Codex (master menu), Guidestones, Housing (5 tiers), Satchel, Hero\'s Satchel, Journal, Morning Briefing, Bestiary, Lore Discovery (904 fragments), Portal Dial',
  },
  {
    category: 'Buddy System',
    count: 5,
    systems: '7-tier bonds (Acquaintance → Spiritbound), Best Buddy combat AI, Pack Mule storage, Mount Charge Attacks, Tamed Animal Protection',
  },
]

const BEDROCK_EXCLUSIVE = [
  {
    title: 'Instant Form Menus',
    desc: 'No entity-based GUIs means zero lag on menu open. Every interaction is instant through Bedrock\'s native form system.',
  },
  {
    title: 'Console & Mobile Native',
    desc: 'Touch controls, controller support, and optimized tick budgets make every system feel native on every platform.',
  },
  {
    title: 'Cached Storage',
    desc: 'StorageManager caches all dynamic properties in memory. Reads are instant. Writes batch efficiently. No lag spikes from NBT operations.',
  },
  {
    title: '28 Extra Utility Systems',
    desc: '130 total systems vs Java\'s 102. The extra modules handle Bedrock-specific infrastructure: EventBridge, StorageManager, ScoreboardInit, and platform adapters. 139 script files, 41,994 lines of code.',
  },
]

export default function Bedrock() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="BEDROCK EDITION"
        badge="CROSS-PLATFORM"
        subtitle="130 systems. Full Java parity. Built for console, mobile, and PC."
        particleColor="rgba(100, 200, 255, 0.3)"
      />

      <div className="max-w-[1200px] mx-auto px-8 py-16">
        {/* Stats Bar */}
        <ScrollReveal>
          <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-16">
            {BEDROCK_STATS.map(stat => (
              <div key={stat.label} className="text-center p-4 rounded-lg border border-cyan-800/30 bg-cyan-950/10">
                <div className="font-['Press_Start_2P'] text-[1.2rem] text-cyan-400 mb-1">{stat.value}</div>
                <div className="font-['Press_Start_2P'] text-[0.55rem] text-stone-500 tracking-widest">{stat.label}</div>
              </div>
            ))}
          </div>
        </ScrollReveal>

        {/* Intro */}
        <ScrollReveal delay={100}>
          <div className="text-center mb-16">
            <p className="font-['Crimson_Pro'] text-xl text-stone-400 max-w-3xl mx-auto leading-relaxed">
              Everything that made Forevercraft special on Java — 408 artifacts, 14 spirit weapons,
              96 companions, 13 raid bosses, an infinite castle, and 102 interconnected systems —
              now runs natively on Bedrock Edition through Minecraft's Script API. No mods. No
              experimental toggles. Just install the behavior pack and play.
            </p>
          </div>
        </ScrollReveal>

        {/* Architecture */}
        <ScrollReveal delay={150}>
          <div className="mb-16">
            <h2 className="font-['Press_Start_2P'] text-[0.85rem] text-cyan-400 tracking-widest text-center mb-8">
              ARCHITECTURE
            </h2>
            <div className="grid md:grid-cols-3 gap-5">
              {ARCHITECTURE.map(item => (
                <div key={item.title} className="rounded-lg border border-stone-800/60 bg-stone-900/30 p-5">
                  <span className="text-2xl block mb-2">{item.icon}</span>
                  <h3 className="font-['Press_Start_2P'] text-[0.65rem] text-stone-100 mb-2">{item.title.toUpperCase()}</h3>
                  <p className="font-['Crimson_Pro'] text-base text-stone-400">{item.desc}</p>
                </div>
              ))}
            </div>
          </div>
        </ScrollReveal>

        {/* Bedrock Advantages */}
        <ScrollReveal delay={200}>
          <div className="mb-16 rounded-lg border border-cyan-800/30 bg-cyan-950/5 p-8">
            <h2 className="font-['Press_Start_2P'] text-[0.75rem] text-cyan-500 tracking-widest mb-6 text-center">
              BEDROCK ADVANTAGES
            </h2>
            <div className="grid md:grid-cols-2 gap-6">
              {BEDROCK_EXCLUSIVE.map(item => (
                <div key={item.title} className="flex gap-4">
                  <span className="text-cyan-400 text-xl mt-1">◆</span>
                  <div>
                    <h3 className="font-['Press_Start_2P'] text-[0.6rem] text-stone-200 mb-1">{item.title.toUpperCase()}</h3>
                    <p className="font-['Crimson_Pro'] text-base text-stone-400">{item.desc}</p>
                  </div>
                </div>
              ))}
            </div>
          </div>
        </ScrollReveal>

        {/* Full Parity Breakdown */}
        <ScrollReveal delay={250}>
          <div className="mb-16">
            <h2 className="font-['Press_Start_2P'] text-[0.85rem] text-cyan-400 tracking-widest text-center mb-3">
              FULL JAVA PARITY
            </h2>
            <p className="font-['Crimson_Pro'] text-base text-stone-500 text-center mb-8">
              Every Java system, faithfully converted. 102 out of 102.
            </p>

            <Spoiler>
              <div className="space-y-4">
                {PARITY_SECTIONS.map(section => (
                  <div key={section.category} className="rounded border border-stone-800/40 bg-stone-900/20 p-4">
                    <div className="flex items-center justify-between mb-2">
                      <h3 className="font-['Press_Start_2P'] text-[0.6rem] text-cyan-400">{section.category.toUpperCase()}</h3>
                      <span className="font-['Press_Start_2P'] text-[0.55rem] text-stone-500">{section.count} systems</span>
                    </div>
                    <p className="font-['Crimson_Pro'] text-base text-stone-400">{section.systems}</p>
                  </div>
                ))}
              </div>
            </Spoiler>
          </div>
        </ScrollReveal>

        {/* Key Differences from Java */}
        <ScrollReveal delay={300}>
          <div className="mb-16 rounded-lg border border-yellow-800/30 bg-yellow-950/5 p-8">
            <h2 className="font-['Press_Start_2P'] text-[0.75rem] text-yellow-500 tracking-widest mb-6 text-center">
              KEY DIFFERENCES FROM JAVA
            </h2>
            <div className="space-y-4">
              {[
                { java: 'mcfunction commands', bedrock: 'Script API JavaScript modules', note: 'Same logic, different language' },
                { java: 'text_display + interaction entity GUIs', bedrock: 'ActionFormData / ModalFormData', note: 'Instant, no entity lag' },
                { java: 'NBT data storage', bedrock: 'Dynamic properties via StorageManager', note: 'Cached for performance' },
                { java: 'Advancement triggers', bedrock: 'EventBridge listeners', note: 'More flexible event system' },
                { java: 'Loot tables with predicates', bedrock: 'Script-generated loot with RNG', note: 'Same drop rates, scripted logic' },
                { java: 'Scoreboard-driven state', bedrock: 'StorageManager + scoreboards hybrid', note: 'Best of both worlds' },
              ].map((diff, i) => (
                <div key={i} className="grid grid-cols-3 gap-4 items-center text-sm">
                  <div className="font-['Crimson_Pro'] text-yellow-600/80">{diff.java}</div>
                  <div className="font-['Crimson_Pro'] text-cyan-400 text-center">→</div>
                  <div>
                    <span className="font-['Crimson_Pro'] text-stone-200">{diff.bedrock}</span>
                    <span className="font-['Crimson_Pro'] text-stone-500 text-xs ml-2">({diff.note})</span>
                  </div>
                </div>
              ))}
            </div>
          </div>
        </ScrollReveal>

        {/* Download */}
        <ScrollReveal delay={350}>
          <div className="text-center mb-16">
            <h2 className="font-['Press_Start_2P'] text-[0.85rem] text-cyan-400 tracking-widest mb-4">
              GET BEDROCK EDITION
            </h2>
            <p className="font-['Crimson_Pro'] text-base text-stone-400 mb-6 max-w-2xl mx-auto">
              Download the behavior pack, drop it into your world, and play.
              No resource pack required. No experimental toggles. Works on all Bedrock platforms.
            </p>
            <a
              href="/downloads"
              className="inline-block px-8 py-4 rounded-lg bg-cyan-600/90 hover:bg-cyan-500 text-stone-950 font-['Press_Start_2P'] text-[0.7rem] tracking-wider transition-colors no-underline"
            >
              DOWNLOADS
            </a>
          </div>
        </ScrollReveal>

        {/* Bottom Quote */}
        <ScrollReveal delay={400}>
          <div className="text-center">
            <p className="font-['Crimson_Pro'] italic text-xl text-stone-500 max-w-2xl mx-auto">
              "Same dream. Every platform."
            </p>
          </div>
        </ScrollReveal>
      </div>
    </div>
  )
}
