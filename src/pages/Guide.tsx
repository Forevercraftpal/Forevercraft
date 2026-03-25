import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'
import Spoiler from '../components/ui/Spoiler'

const PHASES = [
  {
    phase: 1,
    title: 'First Steps',
    dr: '0 - 1',
    color: '#9CA3AF',
    summary: 'The world is quiet. You have nothing but your hands and the light above. Survive.',
    steps: [
      'Punch trees. Craft a crafting table, wooden tools, then stone tools.',
      'Find coal or make charcoal — torches are survival in a world this dark.',
      'Kill animals for food. Cook meat at a furnace or campfire.',
      'Build or find shelter before nightfall. Mobs hit harder here than vanilla.',
      'Mine iron as soon as possible. Iron tools unlock real progression.',
      'Craft an iron pickaxe — your gateway to diamonds and everything beyond.',
      'Open the Forevercraft Codex in your inventory — it tracks every system.',
    ],
    tips: [
      'Campfires heal you passively when you stand near them — free regeneration.',
      'Mining naturally triggers Mining Crates — your first taste of the artifact system.',
      'Any crate can contain an artifact, even Common ones. Every artifact has abilities.',
      'Keep every artifact you find. Weak ones still contribute to Constellations later.',
      'Newcomers receive a free spirit weapon at the start — Adventurers must earn theirs.',
    ],
    spoiler: 'Your Dream Rate starts near 0. Shipwrecks require only 1 DR to loot — explore coastlines early. Villages need 3 DR. Your first permanent DR item will likely be a Crystalized Dream Dropping from killing bats (5% drop). The Gacha Fountain can drop Crumbs of Dreams once you find one. There are 20+ permanent DR-increasing items scattered across the world — hunt them all.',
  },
  {
    phase: 2,
    title: 'Building Foundation',
    dr: '1 - 5',
    color: '#5555FF',
    summary: 'Villages open their doors. Quests await. Your first companion finds you.',
    steps: [
      'Find a village. Place a Book & Quill inside a lectern to spawn the Quest Book.',
      'Quest books are per-village — each village has its own board and reputation.',
      'Complete Errand-tier quests for early XP and reputation.',
      'Visit custom profession villagers — Artificer, Expeditionist, Bartender, and 9 more.',
      'Open every crate you find. Companions can appear in any crate.',
      'Use the Companion Whistle to command your pet to attack — they don\'t auto-engage.',
      'Feed companions Pet Treats to build your relationship bond.',
      'Open the Advantage Trees through the Forevercraft Codex and invest your first points.',
      'Check the Artifact Bounty Board above the Quest Book for daily hunting targets.',
    ],
    tips: [
      'Your first quest each day gives bonus rewards — log in, quest, profit.',
      'Village reputation rises from Stranger to Legend. Higher rep means better rewards and trade discounts.',
      'Companions have home biomes — ocean crates favor aquatic pets, jungle crates favor tropical.',
      'Right-click Forevercraft in the book header to see your stats breakdown and Dream Rate history.',
      'The Archaeology system has no Dream Rate lockout — dig anywhere, anytime.',
    ],
    spoiler: 'Consume permanent DR items as you find them — Crystal of Dreams (+1), Rabbit\'s Dreaming Foot (+1 from Killer Bunny), Dream Inducing Mushroom (+1 from mushroom blocks at 0.25%). Each profession drop like Miner\'s Slumbering Geode or Fisherman\'s Dozing Lure also gives +1 permanent DR. Stack these to push past the early gates. The Black Market in villages sells rare items for netherite — check it daily.',
  },
  {
    phase: 3,
    title: 'Dungeon Delving',
    dr: '5 - 10',
    color: '#55FFFF',
    summary: 'Structures unlock across the world. Armor sets emerge. The dungeon floors call.',
    steps: [
      'At DR 5: Ocean Ruins, Igloos, Trail Ruins, and Ruined Portals unlock.',
      'At DR 7.5: Desert Pyramids, Jungle Pyramids, Mineshafts, and Dungeons unlock.',
      'Structure chests are per-player with 50-hour refresh timers — nobody steals your loot.',
      'Start collecting armor set pieces — 2-piece and 4-piece bonuses change combat dramatically.',
      'Run village dungeons — 5-wave instanced combat with 4 difficulty tiers and 6 random modifiers.',
      'Transmute lower-tier artifacts into higher ones (5 Common = 1 Uncommon, scaling up).',
      'Find Awakening Stones (20% drop from any crate) to unlock Weapon and Armor Mastery.',
      'Explore the Cooking system — right-click a cooking utensil near a campfire for the GUI.',
      'Start building your Bestiary — kill tracker for 52 mob types with permanent damage bonuses.',
    ],
    tips: [
      'Structure crates have a 25% artifact drop rate vs 7% from mining/fishing.',
      'Dungeon modifiers (Relentless, Fortified, Shrouded, Volatile, Undying, Frenzied) add challenge but better rewards.',
      'The Glyphforge lets you permanently bind runes to weapons — 12 glyphs plus the random Arcanum.',
      'Biome Mastery levels up as you spend time in biomes — 5 levels granting DR bonuses and reduced Patron aggro.',
      'The Affinity system tracks your alignment — are you becoming a Peacemonger or walking the path of the Reaper?',
    ],
    spoiler: 'Complete Dungeon Floor 10 with DR 5+ and Spirit Raids unlock. Each structure has 10 floors. Floors 1-9 ask the party to vote: continue or evacuate (majority rules). Floor 10 is the raid boss. The Deepcrawler (Mineshaft) and Mossheart Warden (Dungeon) are the easiest raid bosses. You\'ll need gear and friends for the harder ones.',
  },
  {
    phase: 4,
    title: 'The Middle Game',
    dr: '10 - 17.5',
    color: '#AA00AA',
    summary: 'The world gets dangerous. Fortresses. Monuments. Bastions. Your class defines you now.',
    steps: [
      'At DR 10: Trial Chambers, Nether Fortress, and Ocean Monument unlock.',
      'At DR 14: Stronghold, Woodland Mansion, and Bastion Remnant unlock.',
      'At DR 17.5: Ancient City and End City — the rarest and most rewarding structures.',
      'Commit to a weapon class — each one fundamentally transforms how you fight.',
      'Run Spirit Raids — 10 floors per structure, raid boss at the end.',
      'Collect Ornate and Exquisite artifacts. Build toward the 28 armor sets with 2pc/4pc bonuses.',
      'Level companions to 50+. Work toward Eternal Bond for the 1.5x ability multiplier.',
      'Complete Artifact Constellations — 10 thematic groups, +0.25 DR each, +2.5 total.',
      'Join or create a Guild — shared warp access, expedition bonuses, and a banner to rally under.',
      'Try a Friendly Competition or Craft Trial to test your skills against the community.',
    ],
    tips: [
      'Night combat gives +0.5 temporary DR. Full Moon fishing gives +0.5. Noon mining gives +1.0.',
      'Patron elite mobs spawn at night (5% chance, 10% on New Moon) with 25% crate drop rates.',
      'Mythical Patrons have +1150% HP and +300% damage — but the loot matches the fight.',
      'The Family system lets you get married and build bonds — check it through the Social menu.',
      'Blood Moons grant +1.0 DR to everyone and double Patron spawn rates until dawn.',
    ],
    spoiler: 'Spirit Raids are the gateway to the endgame. Each floor votes: Continue or Evacuate. Floor 10 has a terrifying boss-specific prompt describing what awaits. Win: teleport back, 5% chance for a Spirit Weapon. Lose: sent home, lose ALL XP levels (keep gear). There are 13 structure raid bosses plus the Iron Phalanx at Castle floor 20 and Crimson Bulwark at Castle floor 25.',
  },
  {
    phase: 5,
    title: 'Mythical Pursuit',
    dr: '17.5 - 35',
    color: '#8C0691',
    summary: 'The hunt for mythical artifacts begins. Your companion evolves. Prestige beckons.',
    steps: [
      'Farm Ancient Cities and End Cities for the highest-tier loot.',
      'Collect mythical armor set pieces (+0.5 DR each) — seven mythical sets exist.',
      'Complete all 10 Artifact Constellations (+2.5 total permanent DR).',
      'Level the Butterfly companion to 100 for up to +9.0 permanent Dream Rate.',
      'Max and prestige your primary Advantage Trees — 3 prestige cycles each with 67 unique abilities.',
      'Push companions to max level with max bond — six companions can evolve into ascended forms.',
      'Cook advanced seasonal meals — 16 exclusive recipes rotate with the four seasons.',
      'Explore the Black Market, check your daily Artifact Bounties, and run the Gacha Fountain.',
      'Attempt the Dreaming Realm — a solo challenge arena triggered when you sleep at DR 30+.',
      'Train your Mount — five bond tiers from Unfamiliar to Eternal, with the Skyrift Derby to race.',
    ],
    tips: [
      'Potion of Dreams VI gives +6 temporary DR for 7 minutes — use for farming high-DR structures.',
      'Harvest Moon (1/8 chance on Full Moon) gives +1.5 DR and dramatically faster crop growth.',
      'Dream Echoes mark where mythical items were found — click them to see what was found and by whom.',
      'Night Terrors stalk players past DR 30 on New Moon nights — scaled mini-bosses that hunt you.',
      'The Buddy System lets you bond with tamed vanilla mobs across 7 tiers — check the catalogue.',
    ],
    spoiler: 'At DR 35, you hit 2.0x loot multiplier — every crate rolls twice. This is where mythical drops become realistic. Focus on: all 10 Constellations (+2.5), a full mythical armor set (+2.5), Butterfly at 100 (+9.0), plus as many permanent consumables as you can find. The 13 raid boss DR items (+1 each = +13 total) are massive. The 20+ world consumables add up. Your Patina aging rewards loyalty to your favorite gear.',
  },
  {
    phase: 6,
    title: 'Spirit Endgame',
    dr: '35 - 50',
    color: '#FFAA00',
    summary: 'Spirit Weapons. The Infinite Castle. Metamorphosis. The final chapter of your legend.',
    steps: [
      'Defeat all 14 raid bosses — each drops a unique DR consumable (+1 each).',
      'Obtain a Spirit Weapon (5% from any raid boss). It starts at Common tier.',
      'Progress your Spirit Weapon through 7 tiers (Common → Spirit) by completing unique objectives.',
      'Complete the 100-part Spirit Tome quest chain — each part grants scaling mastery XP.',
      'Climb the Infinite Castle — bosses every 10 floors, milestones at 10/20/30/40/50/75/100.',
      'At Castle floor 25+: 1% chance for Dream Storm Crystal per floor.',
      'Use the Crystal to reveal your twin weapon (if your class has one) or gain a 25% effectiveness boost.',
      'Reach Mythical tier + Spirit Tome quest 50 to activate the Crystal.',
      'Complete all metamorphosis requirements to reach Spirit tier — 125% effectiveness.',
      'Attempt the CraftForever Trade Trials and forge Spirit Tools through 7 tiers of craft objectives.',
      'Challenge the Grand Forge — a five-phase gauntlet that tests every system you\'ve built.',
    ],
    tips: [
      'Spirit Weapons are soulbound — they return on death and can only be stored in ender chests.',
      'Twin weapons share XP and mastery with the original. Both must be held for full twin bonuses.',
      'The Spirit Tome gives XP equal to the quest number in levels — quest 100 = 100 levels worth.',
      'The Infinite Castle has 3 runs per day. Your highest floor is tracked permanently.',
      'The Artisan Tome tracks 100 crafting quests alongside the Spirit Tome\'s combat quests.',
      'Sneak near a Black Market barrel with a Dungeon Key for the Heist — 60 seconds of pure adrenaline.',
    ],
    spoiler: 'Spirit Weapon metamorphosis requires: all glyph slots filled at Exquisite tier, mastery maxed (100,000 XP), all 14 bosses slain, plus weapon-specific objectives (50,000 kills for combat weapons, 50,000 health healed for the Healer staff). The Spirit Tome gives XP equal to the quest number in levels — quest 1 = 1 level, quest 50 = 50 levels, quest 100 = 100 levels. Total: 5,050 levels of mastery XP. The Grand Forge Resonance score draws from every passive system you\'ve built — Advantage Trees, Artisan Rank, spirit weapon, companion, guild rank, cooking buffs, artifact sets, and Artisan Tome progress.',
  },
]

export default function Guide() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="PLAYER GUIDE"
        badge="YOUR JOURNEY"
        subtitle="From your first iron pickaxe to Dream Transcendence. Every step of the way."
        particleColor="rgba(255, 170, 0, 0.3)"
      />

      <div className="max-w-[1200px] mx-auto px-8 py-16">
        {/* Intro */}
        <ScrollReveal>
          <div className="text-center mb-16">
            <p className="font-['Crimson_Pro'] text-xl text-stone-400 max-w-3xl mx-auto leading-relaxed">
              Forevercraft weaves 102 interconnected systems into Minecraft — from a custom
              Dream Rate engine that ties your entire journey together, to 408 artifacts with
              handcrafted abilities, to 14 spirit weapons that grow through seven tiers of
              metamorphosis. This guide walks you through the natural progression — from
              punching your first tree to wielding a transcendent weapon at Dream Rate 50.
              Take it at your own pace. Every player's journey is different.
            </p>
            <p className="font-['Crimson_Pro'] text-base text-stone-500 mt-3">
              Have a question? Click the <span className="text-yellow-500">❓</span> in the bottom corner to ask our Forevercraft Guide — it knows every system inside and out.
            </p>
          </div>
        </ScrollReveal>

        {/* Difficulty Choice */}
        <ScrollReveal>
          <div className="mb-12 rounded-lg border border-yellow-800/30 overflow-hidden">
            <div className="px-8 py-5 bg-gradient-to-r from-yellow-900/15 to-transparent">
              <h2 className="font-['Press_Start_2P'] text-[0.85rem] text-yellow-400 mb-2">CHOOSE YOUR PATH</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 italic">
                When you first join, Forevercraft asks you one question. It shapes everything that follows.
              </p>
            </div>
            <div className="grid md:grid-cols-2 divide-y md:divide-y-0 md:divide-x divide-stone-800/30">
              <div className="px-8 py-6">
                <h3 className="font-['Press_Start_2P'] text-[0.75rem] text-green-400 mb-3">🌱 NEWCOMER</h3>
                <p className="font-['Crimson_Pro'] text-base text-stone-300 mb-4 leading-relaxed">
                  For those who want to experience the world at their own pace, with a helping hand.
                </p>
                <ul className="space-y-2">
                  <li className="font-['Crimson_Pro'] text-base text-stone-400 flex items-start gap-2">
                    <span className="text-green-500 mt-1">✦</span>
                    <span>Free spirit weapon or spirit tool on first join — choose your class immediately</span>
                  </li>
                  <li className="font-['Crimson_Pro'] text-base text-stone-400 flex items-start gap-2">
                    <span className="text-green-500 mt-1">✦</span>
                    <span>Relaxed dungeon mobs — enemies deal reduced damage</span>
                  </li>
                  <li className="font-['Crimson_Pro'] text-base text-stone-400 flex items-start gap-2">
                    <span className="text-green-500 mt-1">✦</span>
                    <span>+10% bonus rewards on combat coins and fishing crates</span>
                  </li>
                </ul>
              </div>
              <div className="px-8 py-6">
                <h3 className="font-['Press_Start_2P'] text-[0.75rem] text-red-400 mb-3">⚔️ ADVENTURER</h3>
                <p className="font-['Crimson_Pro'] text-base text-stone-300 mb-4 leading-relaxed">
                  The intended Forevercraft experience. Every reward is earned. Nothing is given.
                </p>
                <ul className="space-y-2">
                  <li className="font-['Crimson_Pro'] text-base text-stone-400 flex items-start gap-2">
                    <span className="text-red-500 mt-1">✦</span>
                    <span>No free weapons — spirit weapons must be won from raid bosses (5% drop)</span>
                  </li>
                  <li className="font-['Crimson_Pro'] text-base text-stone-400 flex items-start gap-2">
                    <span className="text-red-500 mt-1">✦</span>
                    <span>Full challenge — mobs scale with Dream Rate at standard difficulty</span>
                  </li>
                  <li className="font-['Crimson_Pro'] text-base text-stone-400 flex items-start gap-2">
                    <span className="text-red-500 mt-1">✦</span>
                    <span>Standard reward rates — the world gives you exactly what you deserve</span>
                  </li>
                </ul>
              </div>
              <div className="px-8 py-6 border-t border-stone-800/30">
                <h3 className="font-['Press_Start_2P'] text-[0.75rem] text-red-600 mb-3">☠️ PIONEER</h3>
                <p className="font-['Crimson_Pro'] text-base text-stone-300 mb-4 leading-relaxed">
                  True hardcore. Die once and EVERYTHING is wiped — all items, all progression, all stats. The world survives. You start over.
                </p>
                <ul className="space-y-2">
                  <li className="font-['Crimson_Pro'] text-base text-stone-400 flex items-start gap-2">
                    <span className="text-red-600 mt-1">✦</span>
                    <span>Death = complete wipe — inventory, armor, scoreboards, tags, advancements, XP — everything</span>
                  </li>
                  <li className="font-['Crimson_Pro'] text-base text-stone-400 flex items-start gap-2">
                    <span className="text-red-600 mt-1">✦</span>
                    <span>No starter items. No safety net. Punch a tree, Pioneer.</span>
                  </li>
                  <li className="font-['Crimson_Pro'] text-base text-stone-400 flex items-start gap-2">
                    <span className="text-red-600 mt-1">✦</span>
                    <span>On death: choose to continue as Pioneer, or downgrade to Adventurer or Newcomer</span>
                  </li>
                  <li className="font-['Crimson_Pro'] text-base text-stone-400 flex items-start gap-2">
                    <span className="text-red-600 mt-1">✦</span>
                    <span>The Salvation Stone can save you — if you can find one</span>
                  </li>
                </ul>
              </div>
            </div>
            <div className="px-8 py-4 bg-stone-900/30 border-t border-stone-800/30">
              <p className="font-['Crimson_Pro'] text-base text-stone-500 text-center">
                You can switch between modes with a 14-day cooldown. Pioneer is permanent until death — then you choose your next path.
              </p>
            </div>
          </div>
        </ScrollReveal>

        {/* Progression Phases */}
        <div className="space-y-8">
          {PHASES.map((phase, i) => (
            <ScrollReveal key={phase.phase} delay={i * 60}>
              <div
                className="rounded-lg border overflow-hidden"
                style={{ borderColor: `${phase.color}30` }}
              >
                {/* Phase Header */}
                <div
                  className="px-8 py-6"
                  style={{ background: `linear-gradient(135deg, ${phase.color}10 0%, transparent 70%)` }}
                >
                  <div className="flex items-center gap-4 mb-3">
                    <div
                      className="font-['Press_Start_2P'] text-[0.8rem] px-4 py-2 rounded"
                      style={{ backgroundColor: `${phase.color}20`, color: phase.color, border: `1px solid ${phase.color}40` }}
                    >
                      PHASE {phase.phase}
                    </div>
                    <div
                      className="font-['Press_Start_2P'] text-[0.7rem] px-3 py-1.5 rounded bg-stone-900/60"
                      style={{ color: phase.color }}
                    >
                      DR {phase.dr}
                    </div>
                  </div>
                  <h2 className="font-['Press_Start_2P'] text-[0.85rem] md:text-[1rem] text-stone-100 mb-2">
                    {phase.title}
                  </h2>
                  <p className="font-['Crimson_Pro'] text-lg text-stone-400 italic">
                    {phase.summary}
                  </p>
                </div>

                {/* Steps */}
                <div className="px-8 py-6 border-t border-stone-800/30">
                  <h3 className="font-['Press_Start_2P'] text-[0.7rem] text-stone-500 tracking-widest mb-4">
                    WHAT TO DO
                  </h3>
                  <div className="space-y-3">
                    {phase.steps.map((step, j) => (
                      <div key={j} className="flex items-start gap-4">
                        <span
                          className="font-['Press_Start_2P'] text-[0.7rem] mt-1 shrink-0 w-6 text-center"
                          style={{ color: phase.color }}
                        >
                          {j + 1}
                        </span>
                        <p className="font-['Crimson_Pro'] text-stone-300 text-base leading-relaxed">{step}</p>
                      </div>
                    ))}
                  </div>
                </div>

                {/* Tips */}
                <div className="px-8 py-5 border-t border-stone-800/30 bg-stone-900/20">
                  <h3 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-700 tracking-widest mb-3">
                    TIPS
                  </h3>
                  <div className="space-y-2.5">
                    {phase.tips.map((tip, j) => (
                      <div key={j} className="flex items-start gap-3">
                        <span className="text-yellow-800 text-lg mt-0.5">★</span>
                        <p className="font-['Crimson_Pro'] text-stone-400 text-base leading-relaxed">{tip}</p>
                      </div>
                    ))}
                  </div>
                </div>

                {/* Spoiler */}
                <div className="px-8 pb-5">
                  <Spoiler>
                    <p className="font-['Crimson_Pro'] text-stone-400 text-base leading-relaxed">
                      {phase.spoiler}
                    </p>
                  </Spoiler>
                </div>
              </div>
            </ScrollReveal>
          ))}
        </div>

        {/* Final Note */}
        <ScrollReveal delay={400}>
          <div className="mt-16 text-center">
            <p className="font-['Crimson_Pro'] italic text-xl text-stone-500 max-w-3xl mx-auto leading-relaxed">
              "The journey from zero to fifty isn't a race. It's a story — your story.
              Every artifact found, every companion bonded, every boss defeated is a chapter.
              Take your time, the committed win the race to glory, the quick fall into
              the traps the world has laid before you."
            </p>
          </div>
        </ScrollReveal>
      </div>
    </div>
  )
}
