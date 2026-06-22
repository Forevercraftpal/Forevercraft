import { Link } from 'react-router-dom'
import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'
import Accordion from '../components/ui/Accordion'
import Spoiler from '../components/ui/Spoiler'
import CountUp from '../components/ui/CountUp'
import { STATS } from '../data/constants'

interface Sys {
  title: string
  body: string
  spoiler?: string
  spoilerLabel?: string
  isNew?: boolean
}
interface Group {
  heading: string
  icon: string
  items: Array<Sys>
}

const NEW_FEATURES: Array<{ icon: string; title: string; desc: string }> = [
  { icon: '🌿', title: "The Gatherer's Path", desc: 'A shared harvest-skill engine across 7 node families — ore prospecting, forage bushes, fishing splash-nodes, nests, chest-nodes, timberfall, and buried caches — with success rolls that scale with your crafting class.' },
  { icon: '🎣', title: 'Dreamy Pull', desc: 'A bonus catch-the-rhythm mini-game that can fire on any successful harvest for extra rare loot.' },
  { icon: '🪑', title: 'Antique Furniture', desc: 'Furnishings now have quality grades — Poor, Standard, and Pristine — earned through a sawmill skill mini-game. Pristine antiques double their auras and can roll a hidden material infusion.' },
  { icon: '🏛️', title: 'Structure Boons', desc: 'Building one of 12 great structures plants a hidden boon that radiates passive auras and claimable rites to everyone nearby.' },
  { icon: '🕯️', title: 'Iluminación de Ne', desc: 'A placeable candle that raises Dream Rank for everyone in range.' },
  { icon: '👜', title: 'The Forever Sack', desc: 'The first "spirit item" — a bag that learns your trash, dissolving junk into Forever Dust and paying out a crate scaled to the finest thing you ever fed it.' },
  { icon: '⚙️', title: "Tinkerer's Plinth", desc: 'A fusion altar that combines accessories into capstone "Spirit Artifacts" across 11 fusion families. "You have not gained power; you have gained room."' },
  { icon: '📖', title: 'Pioneer Codex Vault', desc: 'Enshrine your favorite artifacts so they survive even a hardcore Pioneer death, plus a living-tome Codex Gallery.' },
  { icon: '🐾', title: 'Companion Catalogue', desc: 'A living book tracking all 104 companions and their golden shiny variants, with duplicate-fusion power-ups.' },
  { icon: '🌳', title: 'The Tree', desc: 'Every one of the 21 playable classes now has its own per-class skill tree.' },
  { icon: '🌒', title: 'A bigger world', desc: 'Dream Rate cap raised 50 → 100, gacha re-balanced, reward economy re-paced, and a fresh seasonal soil/grass resource-pack pass.' },
]

const NUMBERS: Array<{ value: number; suffix?: string; label: string }> = [
  { value: STATS.totalArtifacts, suffix: '+', label: 'Artifacts' },
  { value: STATS.totalCompanions, label: 'Companions' },
  { value: STATS.totalClasses, label: 'Classes' },
  { value: STATS.totalSpiritWeapons, label: 'Spirit Weapons' },
  { value: STATS.totalRaidBosses, label: 'Raid Bosses' },
  { value: STATS.totalQuests, suffix: '+', label: 'Quests' },
  { value: STATS.totalLoreFragments, label: 'Lore Discoveries' },
  { value: STATS.totalMilestones, suffix: '+', label: 'Milestones' },
  { value: STATS.totalStructures, label: 'Structures' },
  { value: STATS.dreamRateCap, label: 'Dream Rate Cap' },
  { value: STATS.totalSystems, suffix: '+', label: 'Systems' },
  { value: STATS.totalFunctions, suffix: '+', label: 'Functions' },
]

const GROUPS: Array<Group> = [
  {
    heading: 'The Backbone',
    icon: '✦',
    items: [
      {
        title: 'DREAM RATE',
        body: 'Dream Rate is your luck — a single universal attribute woven into every system in the pack. It rises from artifacts, companions, constellations, journals, cooking, guild perks, the time of day, and the moon, and it gates the best loot: Ornate crates at DR 5, Exquisite at 15, Mythical at 25. The cap was raised from 50 to 100 in the Bountiful Harvest update.',
        spoiler: 'A separate Dream Rank ladder (G → SSS) runs off lifetime Dream Points and unlocks housing slots. Past DR 30 the new moon stops being safe (see Night Terrors). The first time anyone on the server crosses DR 30, a one-time world event called The Dreaming awakens.',
        spoilerLabel: 'Spoiler — what waits at the top',
      },
    ],
  },
  {
    heading: 'Artifacts & Gear',
    icon: '⚔️',
    items: [
      {
        title: 'ARTIFACTS',
        body: 'Over 600 unique artifacts — weapons, armor, accessories, and tools — each with bespoke abilities scripted by hand rather than borrowed from vanilla enchantments, across 6 rarity tiers up to Mythical. They drop from crates, treasure, structure bosses, the gacha fountain, and questline finales, with the rarest tiers gated behind your Dream Rate.',
        spoiler: 'Mythical capstones include the Codex of Everything (dimensional teleport), the Dragon Fan (unlocks a hidden combat class), and the Ender Dragon Blade. An 11-family fusion lattice at the Tinkerer\'s Plinth combines lesser pieces into "Grand" capstones.',
        spoilerLabel: 'Spoiler — endgame artifacts',
      },
      {
        title: 'ARMOR SETS',
        body: '28 themed armor sets, from early Blood and Frost plate to Ender Dragon and Titan. Every set grants a 2-piece and 4-piece bonus, and mythical sets push further with multi-piece ultimates and weapon cross-synergies — water-walking, prism shields, assassinate strikes, and a compass that locates 13 structure types.',
      },
      {
        title: 'TRIMS & GLYPHS',
        body: 'Three stacking layers: 18 trim patterns (passive at one piece, dramatic ultimate at four — wind-horses, sonic-boom bows, wolf packs), 11 trim materials rewarding the metal itself, and the Glyphforge, where runes crystallize over real time into 13 glyphs each chosen as one of three facets — 39 effects in all. Inscription projects glyph-stone auras and combined Rune Words into the world.',
      },
      {
        title: 'PATINA',
        body: 'The artifacts you actually use visibly age, gaining new lore lines through Worn → Seasoned → Storied. At the final Legendary stage they earn a permanent +2% bonus, so a well-loved artifact is measurably stronger than a fresh one.',
      },
    ],
  },
  {
    heading: 'Companions & Pets',
    icon: '🐾',
    items: [
      {
        title: 'COMPANIONS',
        body: 'Collect 104 unique companions that follow you, fight with their own damage and cooldown stats, and level from 1 to 100. Each has a rarity tier scaling its power, its own kill counter, and a relationship bond — and every duplicate fuses in for a permanent power bump.',
        spoiler: 'At level 100 with Eternal Bond (4,500 relationship), eligible companions evolve into Ascended forms — 37 in total, six with unique signature abilities like Emberheart\'s phoenix rebirth. Every companion also has a rare golden shiny variant, tracked in its own second dex out of 104.',
        spoilerLabel: 'Spoiler — evolution & shinies',
      },
      {
        title: 'BUDDY SYSTEM & TAMED PETS',
        body: 'A parallel bonding layer for ordinary tamed mobs. Sign a Charter to bond 12 animal types through 7 friendship tiers, unlocking 13 abilities — the top "Best Buddy" gains auto-revive and can equip a weapon. Mount Training bonds horses and llamas across 5 tiers, and a full-moon ceremony can revive a lost pet.',
      },
    ],
  },
  {
    heading: 'Classes, Combat & Mastery',
    icon: '⚡',
    items: [
      {
        title: 'CLASSES & AFFINITY',
        body: 'Your class is decided by what you are holding — there are 21 playable classes: 14 combat and 7 crafting. Each earns Affinity as you use its gear, climbing 7 stages that raise its output up to +75%. Gains are daily-capped and there is no class-lock, so you can master all 21.',
        spoiler: 'The fourteenth combat class — the Dual Swordsman — appears in no menu and no codex. It awakens only when you hold a specific spirit dual-sword in your main hand and any sword in your off-hand; until then its entire UI stays hidden. It is a composite "everything" class, and twin-wielding the matched pair scales attack speed up to 10×.',
        spoilerLabel: 'Spoiler — the hidden 14th combat class',
      },
      {
        title: 'SKILL TREES',
        body: 'Two separate systems. The 15 Advantage Trees are account-wide and fill passively (walking levels Agility, mining levels Mining); each has 25 levels, 3 prestige cycles, and unlocks 45 prestige abilities like Dash and Death Save. The Tree — new this update — gives every one of the 21 classes its own per-class skill tree, with gains cross-training your other classes.',
      },
      {
        title: 'MASTERY & MORALITY',
        body: '13 weapon types and 4 armor slots each level independently for tier-scaled enchantments, awakened with stones and prestiged at max. Biome Mastery rewards time spent in 25 biomes across 5 stages each.',
        spoiler: 'The Reaper system tracks your moral alignment. Infamy rises when you kill villagers and golems — push it high and escalating Hunting Parties come for you. Renown rises through peaceful trade — but a rich reputation makes you a target for Bandit raids. Both decay over time.',
        spoilerLabel: 'Spoiler — the Reaper (morality)',
      },
    ],
  },
  {
    heading: 'Endgame',
    icon: '💀',
    items: [
      {
        title: 'SPIRIT WEAPONS',
        body: '14 soulbound legendaries — one tuned to each combat archetype — each ascending through 7 tiers (Common → Spirit), carrying two signature abilities and a tier-scaling passive. They survive death, can be traded, and reaching the final Spirit tier demands a grueling seven-requirement Metamorphosis.',
        spoiler: 'Seven of the fourteen hide a Twin form revealed by a Dream Storm Crystal (Firebrand ⇄ Aqualoch, Hollow Fangs ⇄ Ghost Fang, and five more); hold both twins for their true power. The Spirit metamorphosis requires all glyphs at Exquisite, 100,000 mastery XP, and all 13 raid bosses slain.',
        spoilerLabel: 'Spoiler — twin forms & metamorphosis',
      },
      {
        title: 'RAID & WORLD BOSSES',
        body: 'Spirit Raids are a 10-floor co-op gauntlet you descend into by party vote, ending at one of 13 multi-phase raid bosses that scale to party size and Dream Rate. Beyond them roam 11 World Bosses — overworld titans with four HP-gated phases and a final Rage state, deadlier on a Blood Moon.',
        spoiler: 'Each raid boss carries a permanent "Realm First!" announcement for whoever fells it first on the server.',
        spoilerLabel: 'Spoiler — once-per-server glory',
      },
      {
        title: 'INFINITE CASTLE',
        body: 'An endless party dungeon — climb as high as you can; death ends the run. Mobs scale per floor, by Dream Rate, and by party size, and a boss arrives every 10th floor — they stack, so floor 100 fields ten at once. Your highest floor is permanent.',
        spoiler: 'Fixed mini-bosses guard the early depths (the floor-20 Iron Phalanx drops a spirit weapon at 5%). Dream Storm Crystals begin dropping at floor 26, and the floor-100 capstone hands out a Dreamy Star, Mythical Awakening Stones, and the Lord title.',
        spoilerLabel: 'Spoiler — what is deep in the castle',
      },
      {
        title: 'DUNGEONS & HEIST',
        body: 'Use a Dungeon Key at any of 17 structure types (or a Defense Horn at a village) to spawn a 5-wave instanced dungeon with one of 16 rotating themes. Clear waves, descend up to 10 floors, and earn Dream-Rate-scaled crates; floor 10 hands off to a Spirit Raid. A daily challenge rotates the featured structure for free entry, and the Heist system adds solo Black Market infiltrations.',
      },
      {
        title: 'SALVATION STONE',
        body: 'A consumable death-protection charge — and the single rarest item in Forevercraft. It is never a random drop; it is earned one-time for a handful of legendary lifetime feats and for the finales of the pack\'s longest questlines.',
        spoiler: 'Right-click to bank a death-protection charge. On your next death it auto-spends: in Normal mode you lose nothing; in Pioneer hardcore your stats and progression survive even though your items don\'t. "Your legacy endures. Your belongings do not." Charges stack.',
        spoilerLabel: 'Spoiler — what it does',
      },
    ],
  },
  {
    heading: 'Quests, Story & Professions',
    icon: '📜',
    items: [
      {
        title: 'QUESTS',
        body: 'With 450+ authored quests, there is always a thread to pull. Every village hosts a 6-tier quest board (75 quests) that refreshes at dawn, with week-long Heroic feats at tier 6. Beyond it run seven questline "tomes" — the Adventurer\'s, Chemist\'s, Smith\'s, Cook\'s, Tinkerer\'s, and Handcrafter\'s paths, plus the sprawling 250-stage Angler\'s Tome — woven together by a Grand Chronicle.',
      },
      {
        title: 'STORY MODE',
        body: 'A 480-chapter saga across 8 branches. The main line runs 50 chapters over 5 Acts, each closing with a cinematic Convergence; seven side branches (Combat, Artisan, Explorer, Social, Lore, Villain, and the Seasonal Chronicles) add 430 more. Play it paced and gated, or set free-play and roam every branch at once.',
        spoiler: 'Choose the Adventurer\'s Chronicle, the Artisan\'s Almanac, or walk both — and its grand finale is one of only two ways to earn a Salvation Stone. At the heart of it all is The Hollow: the Hollow Sovereign, a corrupted first guardian broken by grief over the souls he could not save.',
        spoilerLabel: 'Spoiler — the two paths',
      },
      {
        title: 'PROFESSIONS & VILLAGES',
        body: '12 custom villager professions — Artificer, Bartender, Apiarist, Technician, Expeditionist, Archer, Spelunker, Retired Adventurer, Zookeeper, Nymph, the Taskmaster, and the Wise Wanderer who trades XP for crates — each assigned with an Essence Berry, with one spotlighted daily. Build village reputation through six ranks (Stranger → Acquaintance → Friend → Ally → Hero → Legend); betray a village and face exile.',
      },
    ],
  },
  {
    heading: 'Social & Multiplayer',
    icon: '👥',
    items: [
      {
        title: 'GUILDS, FRIENDS & FAMILY',
        body: 'Found a guild with its own stone and zone, climb 7 ranks to a level-100 cap stacking buffs along the way, form alliances or declare day-long wars, and field guild golems. Add unlimited friends for proximity hearts and gifting streaks, marry another player for a shared buff, and earn Family Titles together.',
      },
      {
        title: 'DUELS & COMPETITIONS',
        body: 'Challenge other players across 5 duel modes (open-world 1v1, arena 1v1, team 2v2, first-to-X, and class duels). Server-wide Competitions run daily across 6 disciplines with leaderboards and lifetime win tracking, plus head-to-head 1v1 challenges. Parties of up to 4 share proximity buffs, an HP sidebar, and 9 class combos.',
      },
    ],
  },
  {
    heading: 'Cooking & The Gatherer\'s Path',
    icon: '🍳',
    items: [
      {
        title: 'COOKING',
        body: 'Cook themed meals at a Campfire Kitchen across 12 cuisine categories, each granting buffs in its domain. Per-category mastery unlocks stronger recipe tiers, recipes are discovered as you cook, and a Pantry auto-feeds ingredients. The Chef\'s Touch is a three-phase skill mini-game whose quality is stamped onto the dish — and Preserved meals keep their buffs through death. Seasonal recipes rotate with the four seasons.',
      },
      {
        title: "THE GATHERER'S PATH",
        body: 'The headline feature of the update. A shared harvest engine spans 7 node families — ore Prospecting, Forage bushes, fishing Splash-Nodes, Nests, Chest-Nodes, Timberfall, and Buried Caches. Each node rolls a single RuneScape-style success check that scales with your crafting class versus the node\'s tier; every outcome pays class XP, and wins can trickle coins, crates, and the Dreamy Pull mini-game.',
        spoiler: 'Dreamy Pull is a bonus timing mini-game that fires on a successful harvest — nail it for glyphs, reagents, or bonus crates. The seasonal Node Festival features one family per day for five days, and Co-op Node Events set a server-wide shared gathering goal everyone cashes in on.',
        spoilerLabel: 'Spoiler — Dreamy Pull, festivals & co-op',
        isNew: true,
      },
    ],
  },
  {
    heading: 'CraftForever & The Forge',
    icon: '🔨',
    items: [
      {
        title: 'CRAFTFOREVER',
        body: 'The crafting-side counterpart to combat progression. Artisan Rank (1–100) is earned from every gather, cook, forge, build, catch, and brew, and feeds a passive Craft Rate multiplier; 7 craft mastery tracks each climb their own ladder. The Artisan Forge refines 15 biome materials into 28 artifact-grade components across 7 tiers, then fuses them with catalysts into gear.',
        spoiler: '6 Spirit Tools — one per craft discipline — drop at 5% from a Tier-10 Craft Trial and ascend through seven tiers along a 100-part Artisan Tome. The Grand Forge is the capstone: a five-phase gauntlet ignited by a rare Forge Catalyst, whose first clear yields the permanent Forge Crystal.',
        spoilerLabel: 'Spoiler — Spirit Tools & the Grand Forge',
      },
      {
        title: 'CRAFT TRIALS',
        body: 'Instanced solo puzzle-arenas across 6 disciplines — Mining, Farming, Fishing, Building, Lumber, and Artisan — each with 10 escalating tiers. Spend a Trial Pass or run the free daily challenge. Hard Mode halves your clock and saddles you with Mining Fatigue for +50% XP. Conquer all six to become a Grand Master.',
      },
      {
        title: "TINKERER'S PLINTH",
        body: 'A data-driven fusion altar: place a Plinth on a beacon and feed it compatible trinkets to fuse them into a single capstone accessory. 11 fusion families (56 recipes) culminate in grand "Spirit Artifacts," and a 12-step quest line ends in the Master Tinkerer title. The companion Hand of Creation frees up accessory slots without adding power.',
        isNew: true,
      },
    ],
  },
  {
    heading: 'Home, Build & Decor',
    icon: '🏠',
    items: [
      {
        title: 'HOUSING',
        body: 'Place a Hearthstone to claim a 64×64 plot as home, then upgrade through 5 tiers for stronger in-zone buffs, golem defenders, block protection, labeled stash barrels, and pet warp-home. Homes auto-garden crops, track a comfort score, and register on your fast-travel network. Laborer villagers can be hired to work your home.',
      },
      {
        title: 'FURNISHINGS & ANTIQUES',
        body: 'Place 83 sub-block decorative sculptures (built from vanilla blocks, so they look right with any texture pack) using a live ghost preview — sneak to rotate, right-click to confirm. They are crafted through an Ideas → Blueprints economy, and shears reclaim them.',
        spoiler: 'Certain furnishings are Antiques whose abilities scale by quality grade — Poor (75%) / Standard (100%) / Pristine (200%) — earned through a sawmill mini-game or the crate tier their blueprint came in. A Pristine antique born from a mythical crate rolls a hidden material infusion (Heartwood → Regeneration, Riverpearl → Water Breathing, and more).',
        spoilerLabel: 'Spoiler — Antique quality & infusion',
        isNew: true,
      },
      {
        title: 'BLUEPRINTS & STRUCTURE BOONS',
        body: 'Place 43 tier-gated structures from blueprint items with a live ghost preview and rotation — from T1 cottages and wells up to T7 castles, grand libraries, guildhalls, and royal theaters.',
        spoiler: 'Building one of 12 great structures plants a hidden boon: a passive aura plus claimable rites for everyone nearby. A Castle radiates Resistance and suppresses hostile spawns; a Beacon Tower grants Speed and outlines threats; a Harbor grants Luck while fishing. Decor Nodes also seed Ideas and Blueprints into structures and villages for you to discover.',
        spoilerLabel: 'Spoiler — what the great structures unlock',
        isNew: true,
      },
    ],
  },
  {
    heading: 'Codex, Lore & Exploration',
    icon: '📖',
    items: [
      {
        title: 'THE ETERNAL CODEX',
        body: 'A right-click hub knitting the whole pack together across roughly 25 tabs — bestiary, lore library, biome and world maps, your skill trees, classes, artifact collection, travel journal, milestones, friends, guild remote, and the story. It upgrades over time into the awakened Phoenix Codex.',
        spoiler: 'Enshrine your favorite artifacts at the Codex altar and they survive even a hardcore Pioneer death — your enshrined collection, and the Dream Points it is worth, persist through the wipe. A living-tome Codex Gallery lets you browse everything you have enshrined.',
        spoilerLabel: 'Spoiler — the Pioneer Codex Vault',
        isNew: true,
      },
      {
        title: 'LORE',
        body: 'Hunt down 896 glowing lore-fragment books scattered across the world (and won from crates and the gacha), collecting them into 163 themed sets across all 4 dimensions. Completing a set grants Dream Rank, XP, and crates; duplicates auto-convert to Lore Shards.',
      },
      {
        title: 'BESTIARY, JOURNAL & GUIDESTONES',
        body: 'Catalog 52 mobs and 11 bosses across a 7-stage rarity ladder. An Exploration Journal tracks every biome, structure, village, and secret you discover; Guidestones build a craftable fast-travel network; and completing 10 sky constellations grants permanent Dream Rate bonuses.',
      },
      {
        title: 'SATCHELS & STORAGE',
        body: 'A whole family of containers: the Satchel (artifacts stay active while carried), the 11-slot Hero Satchel, the Key Satchel, the 9,999-capacity Bulk Barrel, an Ore Bag, Alchemy Binder, and Pantry you can draw from mid-craft, and a Portable Ender that opens your ender storage anywhere.',
        spoiler: 'The Forever Sack — the pack\'s first "spirit item," free at level 30 — learns your trash: dissolve a junk item to whitelist its type into Forever Dust, then sweep all learned types at once (valuables are never auto-swept). Fill it and it spills a crate whose tier matches the finest item you ever fed it. "Quality in, quality out."',
        spoilerLabel: 'Spoiler — the Forever Sack',
        isNew: true,
      },
    ],
  },
  {
    heading: 'The World, Seasons & Difficulty',
    icon: '🌍',
    items: [
      {
        title: 'DAY CYCLE, MOON & SEASONS',
        body: 'Time flows differently — each day stretches to a full real hour, 3× longer than vanilla. 8 moon phases cycle overhead (the new moon stirs hostility; the full moon teems with fish), and 4 seasons rotate across a 64-day year, each with snow stacking, blooms, and its own resource pack.',
      },
      {
        title: 'WORLD EVENTS',
        body: 'More than a dozen world events erupt across the calendar and night sky — Meteor Showers, Blood Moons, Harvest Festivals, Dimensional Rifts, the Aurora Bloom, Prosperity Tides, and rarer Harmonic Convergences keyed to the moon and the server\'s collective Dream Rate. An omen always warns you first.',
        spoiler: 'The Dreaming awakens only once ever — the first time anyone on the server reaches Dream Rate 30 — flooding every player with a huge temporary surge. Starfall, the Abyssal Tremor, and the Rift Echo fire under their own secret moon-and-depth conditions.',
        spoilerLabel: 'Spoiler — the rarest events',
      },
      {
        title: 'NIGHT TERRORS',
        body: 'The world starts to notice the lucky.',
        spoiler: 'Once your Dream Rate climbs past 30, the new moon stops being safe. Glowing, scaled mini-bosses — six distinct types — hunt the high-luck after dark, dropping Nightmare Shards and the rarest crates. Stay near home or an inscription stone to ward them off.',
        spoilerLabel: 'Spoiler — what hunts you past Dream Rate 30',
      },
      {
        title: 'PIONEER DIFFICULTY',
        body: 'Opt into Pioneer and you live one life. A single death erases everything — items, levels, every advancement, your spawn point. The world endures; your legacy does not. Only your enshrined Codex Vault artifacts and an opt-in ender vault survive the fall.',
      },
    ],
  },
  {
    heading: 'Economy',
    icon: '💰',
    items: [
      {
        title: 'CRATES & LOOT',
        body: 'Eight sources feed a single unified crate engine — mining, fishing, harvesting, mob kills, structures, quests, achievements, companions, and artifacts — and every crate spawns as an animated barrel with tier-colored particles. There are 6 crate tiers, 23 biome-specific treasure pools, and a 10% chance of an Awakening Stone. Dream Echoes drift permanently at the exact spot where you found a Mythical.',
      },
      {
        title: 'GACHA & BLACK MARKET',
        body: 'Feed the Fountain of Eternal Dreams with Forever Coins to wish for artifacts, companions, and consolation Dreamdust — a pity system guarantees an Exquisite-or-better at set intervals, and banking "Lucidity" lets you make a guaranteed Lucid Claim. The Black Market barrel offers 14 daily-rotating deals priced in Netherite Ingots, plus a Sell tab to appraise and consign spare artifacts.',
      },
    ],
  },
]

export default function BountifulHarvest() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="THE BOUNTIFUL HARVEST"
        badge="THE EXPANSION"
        subtitle="Our biggest content wave yet — gathering, growing, building, and collecting. Every world has treasure. This one has dreams."
        particleColor="#A3E635"
      />

      <div className="max-w-[1200px] mx-auto px-6 md:px-8 py-16 space-y-20">
        {/* What's New */}
        <ScrollReveal>
          <section>
            <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-600 tracking-widest mb-3 text-center uppercase">
              ✨ What&apos;s New
            </h2>
            <p className="font-['Crimson_Pro'] italic text-stone-400 text-center mb-10 text-lg">
              Eleven headline additions in the Bountiful Harvest update.
            </p>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              {NEW_FEATURES.map(f => (
                <div key={f.title} className="rounded-2xl border border-lime-900/30 bg-lime-950/10 p-5">
                  <div className="flex items-center gap-3 mb-2">
                    <span className="text-xl">{f.icon}</span>
                    <h3 className="font-['Press_Start_2P'] text-[0.6rem] text-lime-400/90 tracking-wider">
                      {f.title}
                    </h3>
                  </div>
                  <p className="font-['Crimson_Pro'] text-stone-400 text-base leading-relaxed">
                    {f.desc}
                  </p>
                </div>
              ))}
            </div>
          </section>
        </ScrollReveal>

        {/* By the Numbers */}
        <ScrollReveal>
          <section>
            <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-600 tracking-widest mb-3 text-center uppercase">
              📊 By the Numbers
            </h2>
            <p className="font-['Crimson_Pro'] italic text-stone-400 text-center mb-10 text-lg">
              Every figure re-verified against the live datapack.
            </p>
            <div className="flex flex-wrap justify-center gap-6 md:gap-10">
              {NUMBERS.map(n => (
                <CountUp key={n.label} end={n.value} suffix={n.suffix} label={n.label} />
              ))}
            </div>
          </section>
        </ScrollReveal>

        {/* The Systems */}
        <section className="space-y-12">
          <ScrollReveal>
            <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-600 tracking-widest mb-3 text-center uppercase">
              🎮 The Systems
            </h2>
            <p className="font-['Crimson_Pro'] italic text-stone-400 text-center text-lg">
              Tap any system to expand it. Spoiler folds hide late-game and discovery content — open at your own risk.
            </p>
          </ScrollReveal>

          {GROUPS.map(group => (
            <ScrollReveal key={group.heading}>
              <div>
                <h3 className="font-['Press_Start_2P'] text-[0.6rem] text-stone-300 tracking-widest mb-4 uppercase flex items-center gap-3">
                  <span className="text-base">{group.icon}</span>
                  {group.heading}
                </h3>
                <div className="space-y-3">
                  {group.items.map(item => (
                    <Accordion key={item.title} title={`${item.title}${item.isNew ? '  ✦ NEW' : ''}`}>
                      <p className="font-['Crimson_Pro'] text-stone-300 text-base leading-relaxed">
                        {item.body}
                      </p>
                      {item.spoiler && (
                        <Spoiler label={item.spoilerLabel ?? 'Spoiler — discovery content'}>
                          <p className="font-['Crimson_Pro'] text-stone-400 text-base leading-relaxed">
                            {item.spoiler}
                          </p>
                        </Spoiler>
                      )}
                    </Accordion>
                  ))}
                </div>
              </div>
            </ScrollReveal>
          ))}
        </section>

        {/* Closing */}
        <ScrollReveal>
          <section className="text-center border-t border-yellow-900/20 pt-14">
            <p className="font-['Crimson_Pro'] italic text-xl text-stone-400 leading-relaxed max-w-2xl mx-auto mb-8">
              Forevercraft doesn&apos;t replace the game you love — it gives it depth, built over hundreds of hours one function at a time. It&apos;s free, and it always will be.
            </p>
            <div className="flex flex-wrap justify-center gap-4">
              <Link
                to="/downloads"
                className="capsule inline-block px-8 py-2.5 border border-lime-800/40 hover:border-lime-600/60 font-['Press_Start_2P'] text-[0.6rem] text-lime-500 hover:text-lime-400 tracking-widest no-underline bg-lime-950/20 hover:bg-lime-950/30"
              >
                DOWNLOAD
              </Link>
              <Link
                to="/guide"
                className="capsule inline-block px-8 py-2.5 border border-yellow-800/30 hover:border-yellow-600/50 font-['Press_Start_2P'] text-[0.6rem] text-stone-500 hover:text-yellow-500 tracking-widest no-underline bg-yellow-950/20 hover:bg-yellow-950/30"
              >
                READ THE GUIDE
              </Link>
            </div>
            <p className="font-['Press_Start_2P'] text-[0.55rem] text-yellow-800 tracking-widest mt-12">
              BUILT WITH LOVE · ONE FUNCTION AT A TIME
            </p>
          </section>
        </ScrollReveal>
      </div>
    </div>
  )
}
