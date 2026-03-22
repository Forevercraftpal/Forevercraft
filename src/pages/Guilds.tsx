import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'

const GUILD_FEATURES = [
  { name: 'Guild Stone', description: 'Place a Guild Stone to establish your guild\'s headquarters. Warp to it from anywhere.' },
  { name: 'Guild Creation', description: 'Sign a guild charter to name your guild. Pay 64 emeralds to found it.' },
  { name: 'Members', description: 'Invite players to join your guild or kick members who aren\'t a good fit.' },
  { name: 'Guild Expeditions', description: 'Launch coordinated group missions for exclusive guild-only rewards and loot.' },
  { name: 'Rank Buffs', description: '7-tier rank system with passive guild-wide buffs: XP, luck, speed, and armor bonuses.' },
  { name: 'Kick Voting', description: 'Democratic removal system. Members vote to remove problematic players — no single leader abuse.' },
]

const COMBO_ABILITIES = [
  { name: 'Shield Wall', players: 2, description: 'Vitality 15+ & Evasion 10+. Shield block grants Evasion members guaranteed dodge for 5s. (45s CD)', color: 'text-blue-400' },
  { name: 'Field Medic', players: 2, description: 'Vitality 15+ & Taskmaster 10+. Eating golden food heals Taskmaster members 4 hearts + Regen I. (60s CD)', color: 'text-green-400' },
  { name: 'Marked for Death', players: 2, description: 'Stealth 10+ & Victorian 10+. Sneak near a hostile to mark it with Glowing — Victorian members deal +25% for 10s. (30s CD)', color: 'text-purple-400' },
  { name: 'Blitz', players: 2, description: 'Agility 10+ & Victorian 10+. Sprinting grants Haste I to Victorian members for 6s. (20s CD)', color: 'text-yellow-400' },
  { name: 'Forge Bond', players: 2, description: 'Blacksmith 15+ & Dexterity 10+. Using a smithing table grants both members +50 Advantage XP. (30s CD)', color: 'text-orange-400' },
  { name: 'Pack Tactics', players: 2, description: 'Both Beastmaster 15+. Passive: all pets gain ability boost when near another Beastmaster.', color: 'text-red-400' },
  { name: 'Tidal Network', players: 2, description: 'Fishing 10+ & Explorer 10+. Passive: Fisher gets +1 Luck of the Sea, Explorer gets DR bonus.', color: 'text-indigo-400' },
  { name: 'Rally Cry', players: 2, description: 'Explorer 15+. First-time crate open gives all party members within 48 blocks +2 Dream Rate for 5 min.', color: 'text-cyan-400' },
  { name: 'Shared Fortunes', players: 2, description: 'Mining 10+ & Gathering 10+. Mining/gathering procs give 20% bonus chance to the complementary tree member. (5s CD)', color: 'text-amber-400' },
]

const DUEL_FEATURES = [
  { type: 'Open World', description: 'Challenge any player to a duel anywhere. 5-second countdown, then fight. No items lost.' },
  { type: 'Arena', description: 'Dedicated arenas with spectator seating. Ranked matches with leaderboard tracking.' },
  { type: 'Pet Duel', description: '30-second 1v1 between companions. Bossbar health display. Winner gains pet XP.' },
  { type: 'Crash Recovery', description: 'If a player disconnects mid-duel, the match is voided. No unfair wins or losses.' },
]

const BUDDY_TIERS = [
  { tier: 0, name: 'Acquaintance', color: 'text-stone-500' },
  { tier: 1, name: 'Familiar', color: 'text-stone-400' },
  { tier: 2, name: 'Trusted', color: 'text-green-400' },
  { tier: 3, name: 'Devoted', color: 'text-blue-400' },
  { tier: 4, name: 'Eternal', color: 'text-purple-400' },
  { tier: 5, name: 'Mythic Bond', color: 'text-orange-400' },
  { tier: 6, name: 'Spiritbound', color: 'text-yellow-400' },
]

const FRIENDSHIP_LEVELS = [
  { level: 1, name: 'Acquaintance', hearts: 10, bonus: 'Can see each other on map', color: 'text-stone-400' },
  { level: 2, name: 'Close Friend', hearts: 30, bonus: 'Shared luck bonus when nearby', color: 'text-green-400' },
  { level: 3, name: 'Best Friend', hearts: 60, bonus: 'Teleport to each other once per day', color: 'text-blue-400' },
  { level: 4, name: 'Soulbound', hearts: 100, bonus: 'Passive XP sharing, exclusive cosmetics', color: 'text-yellow-400' },
]

export default function Guilds() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="SOCIAL SYSTEMS"
        badge="BONDS & BATTLES"
        subtitle="Guilds, parties, duels, buddies, and friendships. Every connection makes you stronger."
        particleColor="#3b82f6"
      />

      {/* Guilds */}
      <section className="max-w-6xl mx-auto px-6 py-16">
        <ScrollReveal>
          <div className="text-center mb-10">
            <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">GUILDS</h2>
            <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
              Found a guild, build a headquarters, and embark on exclusive expeditions together.
            </p>
          </div>
        </ScrollReveal>

        <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-4 mb-16">
          {GUILD_FEATURES.map((feat, i) => (
            <ScrollReveal key={feat.name} delay={i * 60}>
              <div className="rounded-lg border border-blue-900/30 bg-blue-950/15 p-5 h-full">
                <h3 className="font-['Press_Start_2P'] text-[0.5rem] text-blue-400 mb-2">{feat.name}</h3>
                <p className="font-['Crimson_Pro'] text-sm text-stone-400">{feat.description}</p>
              </div>
            </ScrollReveal>
          ))}
        </div>
      </section>

      {/* Party Combos */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">PARTY COMBOS</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
                9 combo abilities that activate when party members fight together. Coordination is rewarded.
              </p>
            </div>
          </ScrollReveal>

          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-4">
            {COMBO_ABILITIES.map((combo, i) => (
              <ScrollReveal key={combo.name} delay={i * 50}>
                <div className="rounded-lg border border-stone-800 bg-stone-900/30 p-4 h-full">
                  <div className="flex items-baseline justify-between mb-2">
                    <h3 className={`font-['Press_Start_2P'] text-[0.45rem] ${combo.color}`}>{combo.name}</h3>
                    <span className="font-['Press_Start_2P'] text-[0.3rem] text-stone-600">{combo.players}+ players</span>
                  </div>
                  <p className="font-['Crimson_Pro'] text-sm text-stone-400">{combo.description}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </section>

      {/* Duels */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">DUELS</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400">
                Test your strength in open-world duels, arena matches, and pet battles.
              </p>
            </div>
          </ScrollReveal>

          <div className="grid md:grid-cols-2 gap-4 max-w-3xl mx-auto">
            {DUEL_FEATURES.map((duel, i) => (
              <ScrollReveal key={duel.type} delay={i * 80}>
                <div className="rounded-lg border border-red-900/30 bg-red-950/10 p-5 h-full">
                  <h3 className="font-['Press_Start_2P'] text-[0.5rem] text-red-400 mb-2">{duel.type}</h3>
                  <p className="font-['Crimson_Pro'] text-sm text-stone-400">{duel.description}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </section>

      {/* Buddy System */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">BUDDY SYSTEM</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
                Form a deep bond with a tamed vanilla mob. Your Best Buddy fights alongside you, gains equipment, and grows through 7 tiers of loyalty.
              </p>
            </div>
          </ScrollReveal>

          <div className="flex flex-wrap justify-center gap-3 max-w-2xl mx-auto">
            {BUDDY_TIERS.map((bt, i) => (
              <ScrollReveal key={bt.tier} delay={i * 50}>
                <div className="text-center rounded-lg border border-stone-800 bg-stone-900/40 px-4 py-3">
                  <p className="font-['Press_Start_2P'] text-[0.35rem] text-stone-600 mb-1">TIER {bt.tier}</p>
                  <p className={`font-['Press_Start_2P'] text-[0.45rem] ${bt.color}`}>{bt.name}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </section>

      {/* Friendship */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">FRIENDSHIP</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
                Build friendships with other players through daily hearts. Four levels of deepening connection with passive bonuses.
              </p>
            </div>
          </ScrollReveal>

          <div className="max-w-xl mx-auto space-y-3">
            {FRIENDSHIP_LEVELS.map((fl, i) => (
              <ScrollReveal key={fl.level} delay={i * 80}>
                <div className="rounded-lg border border-stone-800 bg-stone-900/30 p-4">
                  <div className="flex items-baseline justify-between mb-1">
                    <h3 className={`font-['Press_Start_2P'] text-[0.5rem] ${fl.color}`}>{fl.name}</h3>
                    <span className="font-['Crimson_Pro'] text-xs text-stone-600">{fl.hearts} hearts</span>
                  </div>
                  <p className="font-['Crimson_Pro'] text-sm text-stone-400">{fl.bonus}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </section>

      {/* Family & Marriage */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">FAMILY & MARRIAGE</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
                Reach Best Friend status (90+ hearts) and you can propose marriage. Married players share perks and build a family together.
              </p>
            </div>
          </ScrollReveal>

          <div className="grid md:grid-cols-3 gap-4 max-w-3xl mx-auto">
            <ScrollReveal delay={0}>
              <div className="rounded-lg border border-pink-900/30 bg-pink-950/10 p-5 text-center h-full">
                <p className="font-['Press_Start_2P'] text-[0.5rem] text-pink-400 mb-2">PROPOSAL</p>
                <p className="font-['Crimson_Pro'] text-sm text-stone-400">Requires Best Friend status. Both players must be online to accept.</p>
              </div>
            </ScrollReveal>
            <ScrollReveal delay={80}>
              <div className="rounded-lg border border-pink-900/30 bg-pink-950/10 p-5 text-center h-full">
                <p className="font-['Press_Start_2P'] text-[0.5rem] text-pink-400 mb-2">SHARED PERKS</p>
                <p className="font-['Crimson_Pro'] text-sm text-stone-400">Married players gain shared bonuses and can build a family together.</p>
              </div>
            </ScrollReveal>
            <ScrollReveal delay={160}>
              <div className="rounded-lg border border-pink-900/30 bg-pink-950/10 p-5 text-center h-full">
                <p className="font-['Press_Start_2P'] text-[0.5rem] text-pink-400 mb-2">DIVORCE</p>
                <p className="font-['Crimson_Pro'] text-sm text-stone-400">If things don't work out... that's available too. No judgment.</p>
              </div>
            </ScrollReveal>
          </div>
        </div>
      </section>
    </div>
  )
}
