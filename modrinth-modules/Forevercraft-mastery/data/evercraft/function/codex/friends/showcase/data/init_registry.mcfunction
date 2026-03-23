# Showcase — Init Registry
# Populates evercraft:showcase registry[] with ~100 curated achievements
# Each entry: {id:"<advancement_path>", name:"<title>", desc:"<description>", color:"<color>"}
# id is relative to evercraft: namespace

# Clear registry
data modify storage evercraft:showcase registry set value []

# ═══════════════════════════════════════
# BOSSES (12)
# ═══════════════════════════════════════
data modify storage evercraft:showcase registry append value {id:"alternate/combat/bosses/something_stirs",name:"Something Stirs...",desc:"Defeat your first World Boss",color:"white"}
data modify storage evercraft:showcase registry append value {id:"alternate/combat/bosses/not_even_scratched",name:"Not Even Scratched",desc:"Defeat a World Boss without dying",color:"blue"}
data modify storage evercraft:showcase registry append value {id:"alternate/combat/bosses/overworld_protector",name:"Overworld Protector",desc:"Defeat all 6 Overworld World Bosses",color:"aqua"}
data modify storage evercraft:showcase registry append value {id:"alternate/combat/bosses/trophy_hunter",name:"Trophy Hunter",desc:"Defeat 10 World Bosses",color:"dark_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/combat/bosses/phase_three_survivor",name:"Phase Three Survivor",desc:"Survive a World Boss past Phase 3",color:"dark_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/combat/bosses/titan_toppler",name:"Titan Toppler",desc:"Defeat 25 World Bosses",color:"light_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/combat/bosses/boss_rush",name:"Boss Rush",desc:"Slay 3 World Bosses within one hour",color:"light_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/combat/bosses/hells_warden",name:"Hell's Warden",desc:"Defeat all 3 Nether World Bosses",color:"aqua"}
data modify storage evercraft:showcase registry append value {id:"alternate/combat/bosses/void_breaker",name:"Void Breaker",desc:"Defeat both End World Bosses",color:"aqua"}
data modify storage evercraft:showcase registry append value {id:"alternate/combat/bosses/world_boss_conqueror",name:"World Boss Conqueror",desc:"Defeat every unique World Boss",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/combat/bosses/the_hollow_crown",name:"The Hollow Crown",desc:"Defeat the Hollow King 5 times",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/combat/bosses/hundred_boss_slayer",name:"Hundred Boss Slayer",desc:"Defeat 100 World Bosses",color:"gold"}

# ═══════════════════════════════════════
# COMBAT FEATS (5)
# ═══════════════════════════════════════
data modify storage evercraft:showcase registry append value {id:"alternate/combat/mythical/combat_champion",name:"Combat Champion",desc:"Complete all 44 combat achievements",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/combat/mythical/combat_perfection",name:"Combat Perfection",desc:"Every patron mob and tier with 10000 abilities",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/combat/mythical/combat_completionist",name:"Combat Completionist",desc:"Kill 1000000 mobs",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/combat/mythical/master_all_abilities",name:"Ability Grandmaster",desc:"Trigger 10000 weapon abilities total",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/combat/mythical/patron_annihilator",name:"Patron Annihilator",desc:"Defeat 200 mob patrons",color:"gold"}

# ═══════════════════════════════════════
# CRATES (8)
# ═══════════════════════════════════════
data modify storage evercraft:showcase registry append value {id:"alternate/crates/mythical/five_thousand_crates",name:"Legendary Unboxer",desc:"Open 5000 crates total",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/crates/mythical/master_fisher_crates",name:"Master Fisher's Vault",desc:"Open 500 fishing crates",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/crates/mythical/master_harvester_crates",name:"Master Harvester's Vault",desc:"Open 500 harvest crates",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/crates/mythical/master_miner_crates",name:"Master Miner's Vault",desc:"Open 500 mining crates",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/crates/exquisite/mythical_crate",name:"Mythical Unveiling",desc:"Open a Mythical crate",color:"light_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/crates/exquisite/thousand_crates",name:"Grand Unboxer",desc:"Open 1000 crates total",color:"light_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/crates/exquisite/two_thousand_crates",name:"Crate Obsession",desc:"Open 2000 crates total",color:"light_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/crates/ornate/exquisite_crate",name:"Exquisite Encounter",desc:"Open an Exquisite crate",color:"dark_purple"}

# ═══════════════════════════════════════
# COMPANIONS (8)
# ═══════════════════════════════════════
data modify storage evercraft:showcase registry append value {id:"alternate/companions/mythical/all_companions",name:"Master of Beasts",desc:"Adopt all 93 pets",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/companions/mythical/all_eternal_bond",name:"Unbreakable Bonds",desc:"Raise ALL pets to Eternal Bond",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/companions/mythical/all_max_relationship",name:"Mythical Completionist",desc:"Adopt all Mythical tier pets",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/companions/mythical/companion_master",name:"Companion Master",desc:"Complete all 65 pet achievements",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/companions/exquisite/max_rp",name:"Perfect Bond",desc:"Raise a pet to 5000 RP (max)",color:"light_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/companions/exquisite/fifty_companions",name:"Half Century",desc:"Adopt 50 different pets",color:"light_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/companions/exquisite/soulbound_army",name:"Soulbound Army",desc:"Raise 20 pets to Soulbound",color:"light_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/companions/exquisite/fifteen_eternal",name:"Eternal Dynasty",desc:"Raise 15 pets to Eternal Bond",color:"light_purple"}

# ═══════════════════════════════════════
# GACHA (5)
# ═══════════════════════════════════════
data modify storage evercraft:showcase registry append value {id:"gacha/eternal_wisher",name:"Eternal Wisher",desc:"500 pulls! True dedication!",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"gacha/full_constellation",name:"Full Constellation",desc:"Collect 3 Constellation Fragments",color:"#E0B0FF"}
data modify storage evercraft:showcase registry append value {id:"gacha/dreamy_star",name:"Dreamy Star",desc:"Pull a Mythical from the Fountain",color:"light_purple"}
data modify storage evercraft:showcase registry append value {id:"gacha/fortune_favors",name:"Fortune Favors the Bold",desc:"100 pulls at the Fountain",color:"light_purple"}
data modify storage evercraft:showcase registry append value {id:"gacha/dedicated_dreamer",name:"Dedicated Dreamer",desc:"50 pulls at the Fountain",color:"light_purple"}

# ═══════════════════════════════════════
# EXPLORATION (10)
# ═══════════════════════════════════════
data modify storage evercraft:showcase registry append value {id:"alternate/exploration/mythical/world_wanderer",name:"World Wanderer",desc:"Complete all exploration achievements",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/exploration/mythical/world_mastery",name:"World Mastery",desc:"All biomes, all structures, 5M blocks",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/exploration/mythical/the_dreaming",name:"The Dreaming",desc:"Reach Dream Rate 30 and awaken The Dreaming",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/exploration/mythical/legend_eternal",name:"Legend Eternal",desc:"Max Dreams, max tree, 200 artifacts, 50 pets",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/exploration/mythical/rift_warden_slayer",name:"Rift Warden Slayer",desc:"Defeat the Rift Warden during a Rift Echo",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/exploration/mythical/world_event_veteran",name:"World Event Veteran",desc:"Experience all 5 spontaneous world events",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/exploration/mythical/exploration_completionist",name:"True Explorer",desc:"Visit all biomes, find all structures, travel 1M",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/exploration/mythical/every_structure_looted",name:"Plundered All",desc:"Open crates in every structure type",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/exploration/exquisite/travel_million",name:"Million Miles",desc:"Travel 1000000 blocks",color:"light_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/exploration/exquisite/champion_of_evercraft",name:"Champion of Evercraft",desc:"Max out an Advantage Tree to level 25",color:"light_purple"}

# ═══════════════════════════════════════
# FISHING & MINING & GATHERING (7)
# ═══════════════════════════════════════
data modify storage evercraft:showcase registry append value {id:"alternate/fishing/mythical/fishing_mastery",name:"Fishing Mastery",desc:"Max Fishing tree and catch 10000 fish",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/fishing/mythical/master_gatherer",name:"Master Gatherer",desc:"Complete all fishing, mining, and profession achievements",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/fishing/mythical/fishing_completionist",name:"Ultimate Angler",desc:"Catch 50000 fish",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/mining/mythical/million_blocks",name:"Million Miner",desc:"Mine 1000000 blocks",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/mining/mythical/mining_completionist",name:"Mining Completionist",desc:"Max Mining tree and mine 1M blocks",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/mining/mythical/harvest_completionist",name:"Harvest Completionist",desc:"Max Gathering tree and harvest 1M crops",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/fishing/mythical/fishing_crate_mythical",name:"Mythical Crate Fisher",desc:"Get a Mythical fishing crate",color:"gold"}

# ═══════════════════════════════════════
# ADVANTAGE TREES (9)
# ═══════════════════════════════════════
data modify storage evercraft:showcase registry append value {id:"alternate/advantage/mythical/tree_sage",name:"Tree Sage",desc:"Complete all 73 advantage achievements",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/advantage/mythical/max_all_trees",name:"Tree Perfection",desc:"Max out ALL 13 Advantage Trees",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/advantage/mythical/absolute_perfection",name:"Absolute Perfection",desc:"All trees level 25, all stats maxed",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/advantage/mythical/hundred_thousand_levels",name:"Lifetime Investment",desc:"Spend 100000 levels total",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/advantage/mythical/max_combat_trees",name:"Combat Mastery",desc:"Max all combat trees",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/advantage/mythical/max_gathering_trees",name:"Gathering Mastery",desc:"Max all gathering trees",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/advantage/mythical/max_social_trees",name:"Social Mastery",desc:"Max all social trees",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/advantage/mythical/max_utility_trees",name:"Utility Mastery",desc:"Max all utility trees",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/advantage/mythical/max_blacksmith",name:"Forge Legend",desc:"Max out Blacksmith",color:"gold"}

# ═══════════════════════════════════════
# QUESTS (5)
# ═══════════════════════════════════════
data modify storage evercraft:showcase registry append value {id:"alternate/quests/mythical/quest_legend",name:"Quest Legend",desc:"Complete all 55 quest achievements",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/quests/mythical/all_quests",name:"Quest Overlord",desc:"Complete ALL 75 quests",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/quests/mythical/all_mythical_quests",name:"Mythical Completionist",desc:"Complete all Mythical quests",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/quests/mythical/million_rep",name:"Eternal Legend",desc:"Earn 1,000,000 reputation total",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/quests/mythical/all_exalted",name:"Exalted Everywhere",desc:"Reach Exalted in all villages",color:"gold"}

# ═══════════════════════════════════════
# ARTIFACTS & ARMOR (8)
# ═══════════════════════════════════════
data modify storage evercraft:showcase registry append value {id:"alternate/artifacts/mythical/all_artifacts",name:"Keeper of All Relics",desc:"Collect all 292 artifacts",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/artifacts/mythical/all_27_sets",name:"Grand Collection",desc:"Complete all 27 artifact sets",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/artifacts/mythical/artifact_completionist",name:"Artifact Completionist",desc:"Complete all 83 artifact achievements",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/artifacts/mythical/master_weapon_abilities",name:"Master of War",desc:"Master all weapon abilities",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/armor/mythical/armor_perfection",name:"Armor Perfection",desc:"All 27 sets, all trims, all bonuses",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/armor/mythical/all_twenty_seven_sets",name:"All 27 Sets",desc:"Complete all 27 armor sets",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/armor/mythical/all_set_bonuses",name:"Bonus Master",desc:"Trigger every set bonus ability",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/armor/mythical/set_collector",name:"Set Collector",desc:"Equip every armor set at least once",color:"gold"}

# ═══════════════════════════════════════
# GROWTH / CROSS-SYSTEM (12)
# ═══════════════════════════════════════
data modify storage evercraft:showcase registry append value {id:"alternate/growth/cross_system/legend_of_evercraft",name:"Legend of Evercraft",desc:"700 achievements + Legend everywhere",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/growth/cross_system/forevercraft_master",name:"Forevercraft Master",desc:"Reach mastery in all major systems",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/growth/cross_system/the_absolute",name:"The Absolute",desc:"Earn every other Mythical achievement",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/growth/cross_system/realm_walker",name:"Realm Walker",desc:"Engage with every system across all dimensions",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/growth/cross_system/eternal_champion",name:"Eternal Champion",desc:"100 bosses + 50 dungeons + 200 patrons",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/growth/cross_system/the_collector_supreme",name:"The Collector Supreme",desc:"Max satchel + all lore + all elytra",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/growth/cross_system/architect_of_legends",name:"Architect of Legends",desc:"Max housing + Legend rank + 25 boss kills",color:"light_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/growth/cross_system/lore_hunter_supreme",name:"Lore Hunter Supreme",desc:"100 fragments + 10 sets",color:"light_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/growth/cross_system/the_culinary_knight",name:"The Culinary Knight",desc:"Cook a Feast meal and defeat a Boss in same day",color:"light_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/growth/cross_system/boss_and_brew",name:"Boss & Brew",desc:"Defeat a Boss while a cooking buff is active",color:"blue"}
data modify storage evercraft:showcase registry append value {id:"alternate/growth/cross_system/village_champion",name:"Village Champion",desc:"Reach Legend rank in any village",color:"dark_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/growth/cross_system/rune_warrior",name:"Rune Warrior",desc:"Defeat a Boss with a rune effect active",color:"dark_purple"}

# ═══════════════════════════════════════
# HOUSING & VILLAGES & RUNEFORGE (8)
# ═══════════════════════════════════════
data modify storage evercraft:showcase registry append value {id:"alternate/growth/housing/grand_palace",name:"Grand Palace",desc:"Fully upgrade your home",color:"light_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/growth/housing/manor_lord",name:"Manor Lord",desc:"Upgrade your home to Tier 4",color:"dark_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/growth/runeforge/runic_grandmaster",name:"Runic Grandmaster",desc:"Forge 100 runes",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/growth/runeforge/arcane_smith",name:"Arcane Smith",desc:"Forge 50 runes",color:"light_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/growth/village/master_of_all_trades",name:"Master of All Trades",desc:"Reach Legend in all 6 village specializations",color:"gold"}
data modify storage evercraft:showcase registry append value {id:"alternate/growth/village/specialized_diplomat",name:"Specialized Diplomat",desc:"Reach Legend in 3 different specializations",color:"light_purple"}
data modify storage evercraft:showcase registry append value {id:"alternate/exploration/exquisite/storm_chaser",name:"Storm Chaser",desc:"Experience all 3 new calendar events",color:"#8c0691"}
data modify storage evercraft:showcase registry append value {id:"alternate/exploration/exquisite/witness_dreaming",name:"Witness to The Dreaming",desc:"Be online when The Dreaming is awakened",color:"#8c0691"}

# Total: 102 achievements
