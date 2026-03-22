import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'
import Spoiler from '../components/ui/Spoiler'

const PHASES = [
  {
    phase: 1,
    title: 'First Steps',
    dr: '0 - 1',
    color: '#9CA3AF',
    summary: 'Survive your first night, craft basic tools, find a village.',
    steps: [
      'Punch trees. Craft a crafting table, wooden tools, then stone tools.',
      'Find coal or make charcoal. Torches are survival.',
      'Kill animals for food. Cook meat at a furnace or campfire.',
      'Build or find shelter before nightfall — mobs are stronger here.',
      'Mine iron as soon as possible. Iron tools unlock real progression.',
      'Craft an iron pickaxe — this is your gateway to diamonds and beyond.',
    ],
    tips: [
      'Campfires heal you passively when you stand near them.',
      'Mining will naturally trigger Mining Crates — your first taste of the loot system.',
      'Any crate you open can contain an artifact. Even Common ones have abilities.',
      'Keep every artifact you find. Even weak ones contribute to Constellations later.',
    ],
    spoiler: 'At this stage, your Dream Rate is near 0. Shipwrecks require only 1 DR to loot — explore coastlines early. Villages need 3 DR. Your first permanent DR item will likely be a Crystalized Dream Dropping from killing bats (5% drop) or a Crumb of Dreams (rare world drop).',
  },
  {
    phase: 2,
    title: 'Building Foundation',
    dr: '1 - 5',
    color: '#5555FF',
    summary: 'Unlock villages, start questing, find your first companions.',
    steps: [
      'Reach a village. Right-click the quest board lectern to start questing.',
      'Complete Errand-tier quests for early XP and reputation.',
      'Visit custom profession villagers — Artificer, Expeditionist, Bartender, etc.',
      'Open every crate you find. Companions can appear in any crate.',
      'Feed companions Pet Treats to build your relationship bond.',
      'Start the Advantage Tree system — open it with /trigger ec.advantage set 1.',
      'Invest first skill points into a gathering tree (Mining, Fishing, or Gathering).',
    ],
    tips: [
      'Your first quest each day gives bonus rewards.',
      'Village reputation goes from Stranger to Legend — higher rep means better quests.',
      'Companions have home biomes. Open crates in different biomes for variety.',
      'The Codex (book in inventory) tracks everything you\'ve found.',
    ],
    spoiler: 'Consume permanent DR items as you find them — Crystal of Dreams (+1), Rabbit\'s Dreaming Foot (+1 from Killer Bunny), Dream Inducing Mushroom (+1 from mushroom blocks at 0.25%). Each profession drop like Miner\'s Slumbering Geode or Fisherman\'s Dozing Lure also gives +1 permanent DR. Stack these to push past the early gates.',
  },
  {
    phase: 3,
    title: 'Dungeon Delving',
    dr: '5 - 10',
    color: '#55FFFF',
    summary: 'Unlock structures, run dungeons, collect armor sets.',
    steps: [
      'At DR 5: Ocean Ruins, Igloos, Trail Ruins, and Ruined Portals unlock.',
      'At DR 7.5: Desert Pyramids, Jungle Pyramids, Mineshafts, and Dungeons unlock.',
      'Structure chests are per-player with 50-hour refresh timers.',
      'Start collecting armor set pieces — matching 2 pieces activates the 2pc bonus.',
      'Run village dungeons (5-wave instanced combat). Try Easy first, then scale up.',
      'Transmute lower-tier artifacts into higher ones (5 Common = 1 Uncommon).',
      'Unlock Weapon Mastery by finding Awakening Stones in crates.',
    ],
    tips: [
      'Structure crates have a 25% artifact drop rate vs 7% from mining/fishing.',
      'Dungeon modifiers (Relentless, Fortified, etc.) add challenge but better rewards.',
      'The Glyphforge lets you permanently bind runes to weapons — place one early.',
      'Biome Mastery levels up as you spend time in biomes, granting passive DR.',
    ],
    spoiler: 'At DR 7.5, you can access Mineshafts and Dungeons — these are the entry points for Spirit Raids later. Each structure has 10 floors. Floors 1-9 ask if you want to continue or evacuate. Floor 10 is the raid boss. You need DR 10 to attempt raids. The Deepcrawler (Mineshaft) and Mossheart Warden (Dungeon) are the easiest raid bosses.',
  },
  {
    phase: 4,
    title: 'The Middle Game',
    dr: '10 - 17.5',
    color: '#AA00AA',
    summary: 'Trial Chambers, fortresses, monuments. Spirit Raids open. Classes emerge.',
    steps: [
      'At DR 10: Trial Chambers, Nether Fortress, and Ocean Monument unlock.',
      'At DR 14: Stronghold, Woodland Mansion, and Bastion Remnant unlock.',
      'At DR 17.5: Ancient City and End City — the rarest structures.',
      'Choose a weapon class. Each class transforms how you fight.',
      'Start running Spirit Raids — 10 floors per structure, boss at floor 10.',
      'Collect Ornate and Exquisite artifacts. Build toward full armor sets.',
      'Level companions to 50+. Work toward Eternal Bond (4500+ RP).',
      'Complete Artifact Constellations for permanent +0.25 DR each.',
    ],
    tips: [
      'Night combat gives +0.5 temporary DR. Full Moon fishing gives +0.5.',
      'Patron elite mobs spawn at night (5% chance, 10% on New Moon) and drop crates.',
      'Mythical Patrons have +1150% HP and +300% damage — but incredible loot.',
      'Join or create a Guild for expedition bonuses and shared warp access.',
    ],
    spoiler: 'Spirit Raids are 10-floor dungeon crawls inside each structure type. Each floor votes: Continue or Evacuate (majority rules). Floor 10 is the raid boss with a 10-minute enrage timer. Win: teleport back, 5% chance for a Spirit Weapon. Lose: sent home, lose ALL XP levels (keep gear). There are 13 raid bosses plus the Iron Phalanx at Castle floor 20 and Crimson Bulwark at Castle floor 25.',
  },
  {
    phase: 5,
    title: 'Mythical Pursuit',
    dr: '17.5 - 35',
    color: '#8C0691',
    summary: 'Chase mythical artifacts, evolve companions, prestige skill trees.',
    steps: [
      'Farm Ancient Cities and End Cities for the highest-tier loot.',
      'Collect all 7 mythical armor set pieces for one set (+0.5 DR each = +2.5 total).',
      'Complete all 10 Artifact Constellations (+2.5 total permanent DR).',
      'Level Butterfly companion to 100 for +9 permanent Dream Rate.',
      'Max and prestige your primary skill trees (3 prestige cycles each).',
      'Start cooking advanced meals for combat buffs.',
      'Explore the Black Market for rare deals.',
      'Attempt the Dreaming Realm (triggers on sleep at DR 30+).',
    ],
    tips: [
      'Potion of Dreams VI gives +6 temporary DR for 7 minutes — use for farming.',
      'Harvest Moon (1/8 chance on Full Moon) gives +1.5 DR and faster crop growth.',
      'Dream Echoes mark where mythical items were found — clickable for details.',
      'Night Terrors spawn near you at DR 30+ on New Moon nights. Kill for rewards.',
    ],
    spoiler: 'At DR 35, you hit 2.0x loot multiplier — every crate rolls twice. This is where mythical drops become realistic. Focus on: all 10 Constellations (+2.5), a full mythical armor set (+2.5), Butterfly at 100 (+9), plus as many permanent consumables as you can find. The 13 raid boss DR items (+1 each = +13 total) are a massive source if you can clear all raids.',
  },
  {
    phase: 6,
    title: 'Spirit Endgame',
    dr: '35 - 50',
    color: '#FFAA00',
    summary: 'Spirit Weapons, the Infinite Castle, and the path to transcendence.',
    steps: [
      'Defeat all 14 raid bosses. Each drops a unique DR consumable (+1 each).',
      'Obtain a Spirit Weapon (5% from any raid boss). It starts at Common tier.',
      'Progress your Spirit Weapon through 7 tiers (Common → Spirit).',
      'Complete the 100-part Spirit Tome quest chain for mastery XP.',
      'Climb the Infinite Castle — bosses every 10 floors, milestones at 50/75/100.',
      'At Castle floor 25+: 1% chance for Dream Storm Crystal per floor.',
      'Use the Crystal to reveal your twin weapon (if your class has one).',
      'At Mythical tier + Tome quest 50: Crystal activates.',
      'Complete all 7 metamorphosis requirements to reach Spirit tier.',
    ],
    tips: [
      'Spirit Weapons are soulbound — they return on death and can only be stored in ender chests.',
      'Twin weapons share XP and mastery with the original.',
      'Classes without twins get a 25% effectiveness boost from the Crystal instead.',
      'Spirit tier gives 125% effectiveness. With the solo boost, that\'s 150%.',
      'The Infinite Castle has 3 runs per day. Your highest floor is tracked permanently.',
    ],
    spoiler: 'Spirit Weapon metamorphosis requires: all glyph slots filled at Exquisite tier, mastery maxed (100,000 XP), all 14 bosses slain, plus 4 weapon-specific objectives (like 50,000 kills for combat weapons or 50,000 health healed for the Healer staff). The Spirit Tome gives XP equal to the quest number in levels — quest 1 = 1 level, quest 50 = 50 levels, quest 100 = 100 levels. Total: 5,050 levels of mastery XP per weapon.',
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

      <div className="max-w-4xl mx-auto px-6 py-16">
        {/* Intro */}
        <ScrollReveal>
          <div className="text-center mb-16">
            <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
              Forevercraft adds 95 interconnected systems to Minecraft. This guide walks you
              through the natural progression — from punching your first tree to wielding a
              Spirit Weapon at Dream Rate 50. Take it at your own pace. Every player's journey
              is different.
            </p>
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
                  className="px-6 py-5"
                  style={{ background: `linear-gradient(135deg, ${phase.color}10 0%, transparent 70%)` }}
                >
                  <div className="flex items-center gap-4 mb-2">
                    <div
                      className="font-['Press_Start_2P'] text-[0.5rem] px-3 py-1.5 rounded"
                      style={{ backgroundColor: `${phase.color}20`, color: phase.color, border: `1px solid ${phase.color}40` }}
                    >
                      PHASE {phase.phase}
                    </div>
                    <div
                      className="font-['Press_Start_2P'] text-[0.4rem] px-2 py-1 rounded bg-stone-900/60"
                      style={{ color: phase.color }}
                    >
                      DR {phase.dr}
                    </div>
                  </div>
                  <h2 className="font-['Press_Start_2P'] text-[0.7rem] md:text-[0.85rem] text-stone-100 mb-2">
                    {phase.title}
                  </h2>
                  <p className="font-['Crimson_Pro'] text-stone-400">
                    {phase.summary}
                  </p>
                </div>

                {/* Steps */}
                <div className="px-6 py-5 border-t border-stone-800/30">
                  <h3 className="font-['Press_Start_2P'] text-[0.4rem] text-stone-500 tracking-widest mb-3">
                    WHAT TO DO
                  </h3>
                  <div className="space-y-2">
                    {phase.steps.map((step, j) => (
                      <div key={j} className="flex items-start gap-3">
                        <span
                          className="font-['Press_Start_2P'] text-[0.35rem] mt-1 shrink-0 w-5 text-center"
                          style={{ color: phase.color }}
                        >
                          {j + 1}
                        </span>
                        <p className="font-['Crimson_Pro'] text-stone-300 text-sm">{step}</p>
                      </div>
                    ))}
                  </div>
                </div>

                {/* Tips */}
                <div className="px-6 py-4 border-t border-stone-800/30 bg-stone-900/20">
                  <h3 className="font-['Press_Start_2P'] text-[0.4rem] text-yellow-700 tracking-widest mb-2">
                    TIPS
                  </h3>
                  <div className="space-y-1.5">
                    {phase.tips.map((tip, j) => (
                      <div key={j} className="flex items-start gap-2">
                        <span className="text-yellow-800 text-xs mt-0.5">★</span>
                        <p className="font-['Crimson_Pro'] text-stone-400 text-sm">{tip}</p>
                      </div>
                    ))}
                  </div>
                </div>

                {/* Spoiler */}
                <div className="px-6 pb-4">
                  <Spoiler>
                    <p className="font-['Crimson_Pro'] text-stone-400 text-sm leading-relaxed">
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
            <p className="font-['Crimson_Pro'] italic text-xl text-stone-500 max-w-2xl mx-auto">
              "The journey from zero to fifty isn't a race. It's a story — your story.
              Every artifact found, every companion bonded, every boss defeated is a chapter.
              Take your time. The world isn't going anywhere."
            </p>
          </div>
        </ScrollReveal>
      </div>
    </div>
  )
}
