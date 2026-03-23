# === BULK CLAIM — LORE SET COMPLETIONS ===
# Claims all unclaimed completed lore set rewards at once
# Run as: player

execute unless entity @s[tag=Adv.InMenu] run return 0
scoreboard players set @s ec.claim_cnt 0

# s1: Flowers of the Plains
execute if score @s ec.ls_1 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s1_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s1_1",tier:"common",coins:5}
# s2: Forest Whispers
execute if score @s ec.ls_2 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s2_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s2_1",tier:"common",coins:5}
# s3: Petal Cascade
execute if score @s ec.ls_3 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s3_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s3_1",tier:"uncommon",coins:10}
# s4: Darkwood Shadows
execute if score @s ec.ls_4 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s4_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s4_1",tier:"uncommon",coins:10}
# s5: Frostpine Tales
execute if score @s ec.ls_5 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s5_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s5_1",tier:"common",coins:5}
# s6: Summit Stones
execute if score @s ec.ls_6 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s6_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s6_1",tier:"common",coins:5}
# s7: Jungle Relics
execute if score @s ec.ls_7 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s7_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s7_1",tier:"uncommon",coins:10}
# s8: Desert Mirages
execute if score @s ec.ls_8 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s8_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s8_1",tier:"common",coins:5}
# s9: Savanna Dusk
execute if score @s ec.ls_9 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s9_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s9_1",tier:"common",coins:5}
# s10: Tidal Treasures
execute if score @s ec.ls_10 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s10_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s10_1",tier:"common",coins:5}
# s11: River Stones
execute if score @s ec.ls_11 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s11_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s11_1",tier:"common",coins:5}
# s12: Murky Keepsakes
execute if score @s ec.ls_12 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s12_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s12_1",tier:"uncommon",coins:10}
# s13: Mycelium Mysteries
execute if score @s ec.ls_13 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s13_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s13_1",tier:"rare",coins:15}
# s14: Frozen Memories
execute if score @s ec.ls_14 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s14_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s14_1",tier:"common",coins:5}
# s15: Terracotta Chronicles
execute if score @s ec.ls_15 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s15_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s15_1",tier:"uncommon",coins:10}
# s16: Lush Undergrowth
execute if score @s ec.ls_16 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s16_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s16_1",tier:"uncommon",coins:10}
# s17: Stalactite Songs
execute if score @s ec.ls_17 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s17_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s17_1",tier:"uncommon",coins:10}
# s18: Sculk Whispers
execute if score @s ec.ls_18 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s18_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s18_1",tier:"rare",coins:15}
# s19: Windswept Relics
execute if score @s ec.ls_19 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s19_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s19_1",tier:"common",coins:5}
# s20: Depths Below
execute if score @s ec.ls_20 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s20_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s20_1",tier:"common",coins:5}
# s21: Warden's Legacy
execute if score @s ec.ls_21 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s21_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s21_1",tier:"rare",coins:15}
# s22: City of Silence
execute if score @s ec.ls_22 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s22_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s22_1",tier:"rare",coins:15}
# s23: Pharaoh's Hoard
execute if score @s ec.ls_23 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s23_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s23_1",tier:"uncommon",coins:10}
# s24: Sandswept Relics
execute if score @s ec.ls_24 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s24_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s24_1",tier:"uncommon",coins:10}
# s25: Frozen Hearth
execute if score @s ec.ls_25 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s25_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s25_1",tier:"common",coins:5}
# s26: Ice Laboratory
execute if score @s ec.ls_26 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s26_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s26_1",tier:"uncommon",coins:10}
# s27: Temple Treasures
execute if score @s ec.ls_27 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s27_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s27_1",tier:"uncommon",coins:10}
# s28: Jungle Traps
execute if score @s ec.ls_28 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s28_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s28_1",tier:"uncommon",coins:10}
# s29: Evoker's Collection
execute if score @s ec.ls_29 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s29_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s29_1",tier:"rare",coins:15}
# s30: Mansion Secrets
execute if score @s ec.ls_30 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s30_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s30_1",tier:"rare",coins:15}
# s31: Miner's Lament
execute if score @s ec.ls_31 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s31_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s31_1",tier:"common",coins:5}
# s32: Rail Tales
execute if score @s ec.ls_32 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s32_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s32_1",tier:"common",coins:5}
# s33: Guardian's Trove
execute if score @s ec.ls_33 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s33_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s33_1",tier:"uncommon",coins:10}
# s34: Prismarine Halls
execute if score @s ec.ls_34 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s34_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s34_1",tier:"rare",coins:15}
# s35: Drowned Legacy
execute if score @s ec.ls_35 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s35_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s35_1",tier:"uncommon",coins:10}
# s36: Coral Archives
execute if score @s ec.ls_36 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s36_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s36_1",tier:"common",coins:5}
# s37: Raider's Cache
execute if score @s ec.ls_37 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s37_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s37_1",tier:"uncommon",coins:10}
# s38: Banner Tales
execute if score @s ec.ls_38 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s38_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s38_1",tier:"common",coins:5}
# s39: Portal Fragments
execute if score @s ec.ls_39 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s39_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s39_1",tier:"uncommon",coins:10}
# s40: Between Worlds
execute if score @s ec.ls_40 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s40_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s40_1",tier:"rare",coins:15}
# s41: Captain's Log
execute if score @s ec.ls_41 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s41_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s41_1",tier:"common",coins:5}
# s42: Barnacle Bounty
execute if score @s ec.ls_42 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s42_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s42_1",tier:"common",coins:5}
# s43: Ender Archives
execute if score @s ec.ls_43 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s43_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s43_1",tier:"rare",coins:15}
# s44: Dungeon Depths
execute if score @s ec.ls_44 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s44_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s44_1",tier:"ornate",coins:25}
# s45: Buried History
execute if score @s ec.ls_45 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s45_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s45_1",tier:"uncommon",coins:10}
# s46: Archaeologist's Notes
execute if score @s ec.ls_46 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s46_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s46_1",tier:"uncommon",coins:10}
# s47: Trial Trophies
execute if score @s ec.ls_47 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s47_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s47_1",tier:"uncommon",coins:10}
# s48: Chamber Keys
execute if score @s ec.ls_48 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s48_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s48_1",tier:"rare",coins:15}
# s49: Village Chronicles
execute if score @s ec.ls_49 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s49_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s49_1",tier:"uncommon",coins:10}
# s50: Hearth and Home
execute if score @s ec.ls_50 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s50_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s50_1",tier:"common",coins:5}
# s51: Mob Femurs
execute if score @s ec.ls_51 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s51_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s51_1",tier:"common",coins:5}
# s52: Mob Feet
execute if score @s ec.ls_52 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s52_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s52_1",tier:"common",coins:5}
# s53: Mob Eggs
execute if score @s ec.ls_53 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s53_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s53_1",tier:"common",coins:5}
# s54: Hostile Weapons
execute if score @s ec.ls_54 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s54_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s54_1",tier:"uncommon",coins:10}
# s55: Flower Pressing
execute if score @s ec.ls_55 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s55_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s55_1",tier:"common",coins:5}
# s56: Mining Logs
execute if score @s ec.ls_56 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s56_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s56_1",tier:"common",coins:5}
# s57: Fishing Tales
execute if score @s ec.ls_57 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s57_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s57_1",tier:"common",coins:5}
# s58: Cooking Notes
execute if score @s ec.ls_58 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s58_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s58_1",tier:"common",coins:5}
# s59: Farming Almanac
execute if score @s ec.ls_59 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s59_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s59_1",tier:"common",coins:5}
# s60: Weather Journals
execute if score @s ec.ls_60 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s60_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s60_1",tier:"common",coins:5}
# s61: Star Charts
execute if score @s ec.ls_61 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s61_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s61_1",tier:"uncommon",coins:10}
# s62: Animal Studies
execute if score @s ec.ls_62 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s62_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s62_1",tier:"common",coins:5}
# s63: Potion Recipes
execute if score @s ec.ls_63 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s63_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s63_1",tier:"uncommon",coins:10}
# s64: Enchanting Lore
execute if score @s ec.ls_64 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s64_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s64_1",tier:"uncommon",coins:10}
# s65: Redstone Theory
execute if score @s ec.ls_65 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s65_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s65_1",tier:"uncommon",coins:10}
# s66: Music Scores
execute if score @s ec.ls_66 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s66_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s66_1",tier:"common",coins:5}
# s67: Dream Fragments
execute if score @s ec.ls_67 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s67_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s67_1",tier:"uncommon",coins:10}
# s68: Traveler's Maps
execute if score @s ec.ls_68 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s68_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s68_1",tier:"common",coins:5}
# s69: Monster Field Guide
execute if score @s ec.ls_69 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s69_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s69_1",tier:"common",coins:5}
# s70: Woodland Myths
execute if score @s ec.ls_70 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s70_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s70_1",tier:"uncommon",coins:10}
# s71: Ocean Depths
execute if score @s ec.ls_71 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s71_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s71_1",tier:"common",coins:5}
# s72: Mountain Echoes
execute if score @s ec.ls_72 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s72_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s72_1",tier:"common",coins:5}
# s73: Desert Sands
execute if score @s ec.ls_73 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s73_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s73_1",tier:"common",coins:5}
# s74: Cave Paintings
execute if score @s ec.ls_74 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s74_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s74_1",tier:"uncommon",coins:10}
# s75: Ancient Scripts
execute if score @s ec.ls_75 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s75_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s75_1",tier:"uncommon",coins:10}
# s76: Ghost Stories
execute if score @s ec.ls_76 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s76_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s76_1",tier:"uncommon",coins:10}
# s77: Warrior's Codex
execute if score @s ec.ls_77 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s77_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s77_1",tier:"uncommon",coins:10}
# s78: Herbalist's Guide
execute if score @s ec.ls_78 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s78_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s78_1",tier:"common",coins:5}
# s79: Blacksmith's Secrets
execute if score @s ec.ls_79 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s79_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s79_1",tier:"uncommon",coins:10}
# s80: Adventurer's Diary
execute if score @s ec.ls_80 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s80_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s80_1",tier:"common",coins:5}
# s81: Builder's Notes
execute if score @s ec.ls_81 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s81_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s81_1",tier:"common",coins:5}
# s82: Nether Wastes Ash
execute if score @s ec.ls_82 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s82_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s82_1",tier:"uncommon",coins:10}
# s83: Blaze Wastes
execute if score @s ec.ls_83 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s83_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s83_1",tier:"uncommon",coins:10}
# s84: Crimson Spore Tales
execute if score @s ec.ls_84 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s84_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s84_1",tier:"uncommon",coins:10}
# s85: Crimson Canopy
execute if score @s ec.ls_85 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s85_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s85_1",tier:"uncommon",coins:10}
# s86: Warped Echoes
execute if score @s ec.ls_86 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s86_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s86_1",tier:"uncommon",coins:10}
# s87: Twisted Canopy
execute if score @s ec.ls_87 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s87_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s87_1",tier:"uncommon",coins:10}
# s88: Delta Stones
execute if score @s ec.ls_88 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s88_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s88_1",tier:"uncommon",coins:10}
# s89: Magma Fields
execute if score @s ec.ls_89 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s89_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s89_1",tier:"rare",coins:15}
# s90: Soul Whispers
execute if score @s ec.ls_90 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s90_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s90_1",tier:"uncommon",coins:10}
# s91: Valley of Bones
execute if score @s ec.ls_91 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s91_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s91_1",tier:"rare",coins:15}
# s92: Bastion's Bounty
execute if score @s ec.ls_92 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s92_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s92_1",tier:"rare",coins:15}
# s93: Piglin Hoard
execute if score @s ec.ls_93 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s93_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s93_1",tier:"rare",coins:15}
# s94: Fortress Archives
execute if score @s ec.ls_94 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s94_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s94_1",tier:"uncommon",coins:10}
# s95: Blaze Quarters
execute if score @s ec.ls_95 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s95_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s95_1",tier:"rare",coins:15}
# s96: Nether Ores
execute if score @s ec.ls_96 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s96_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s96_1",tier:"common",coins:5}
# s97: Lava Fishing
execute if score @s ec.ls_97 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s97_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s97_1",tier:"common",coins:5}
# s98: Piglin Trading
execute if score @s ec.ls_98 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s98_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s98_1",tier:"uncommon",coins:10}
# s99: Wither Cult
execute if score @s ec.ls_99 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s99_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s99_1",tier:"rare",coins:15}
# s100: Nether Flora
execute if score @s ec.ls_100 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s100_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s100_1",tier:"common",coins:5}
# s101: Ghast Journals
execute if score @s ec.ls_101 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s101_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s101_1",tier:"uncommon",coins:10}
# s102: Nether Masonry
execute if score @s ec.ls_102 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s102_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s102_1",tier:"common",coins:5}
# s103: Strider Tales
execute if score @s ec.ls_103 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s103_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s103_1",tier:"common",coins:5}
# s104: Gold Rush
execute if score @s ec.ls_104 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s104_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s104_1",tier:"uncommon",coins:10}
# s105: Nether Survival
execute if score @s ec.ls_105 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s105_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s105_1",tier:"common",coins:5}
# s106: Blaze Academy
execute if score @s ec.ls_106 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s106_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s106_1",tier:"uncommon",coins:10}
# s107: Crimson Cuisine
execute if score @s ec.ls_107 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s107_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s107_1",tier:"common",coins:5}
# s108: Dimension Rifts
execute if score @s ec.ls_108 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s108_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s108_1",tier:"uncommon",coins:10}
# s109: Ancient Nether
execute if score @s ec.ls_109 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s109_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s109_1",tier:"rare",coins:15}
# s110: Skull Collection
execute if score @s ec.ls_110 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s110_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s110_1",tier:"uncommon",coins:10}
# s111: Nether Soundscapes
execute if score @s ec.ls_111 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s111_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s111_1",tier:"common",coins:5}
# s112: Void Stones
execute if score @s ec.ls_112 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s112_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s112_1",tier:"uncommon",coins:10}
# s113: End City Treasures
execute if score @s ec.ls_113 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s113_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s113_1",tier:"ornate",coins:25}
# s114: Shulker Archives
execute if score @s ec.ls_114 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s114_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s114_1",tier:"rare",coins:15}
# s115: Dragon Relics
execute if score @s ec.ls_115 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s115_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s115_1",tier:"rare",coins:15}
# s116: Chorus Gardens
execute if score @s ec.ls_116 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s116_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s116_1",tier:"common",coins:5}
# s117: Ender Pearl Studies
execute if score @s ec.ls_117 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s117_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s117_1",tier:"uncommon",coins:10}
# s118: Void Walker's Log
execute if score @s ec.ls_118 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s118_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s118_1",tier:"common",coins:5}
# s119: Enderman Studies
execute if score @s ec.ls_119 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s119_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s119_1",tier:"common",coins:5}
# s120: End Island Survey
execute if score @s ec.ls_120 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s120_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s120_1",tier:"common",coins:5}
# s121: Crystal Resonance
execute if score @s ec.ls_121 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s121_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s121_1",tier:"rare",coins:15}
# s122: Shulker Biology
execute if score @s ec.ls_122 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s122_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s122_1",tier:"uncommon",coins:10}
# s123: End Stone Geology
execute if score @s ec.ls_123 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s123_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s123_1",tier:"common",coins:5}
# s124: Elytra Legends
execute if score @s ec.ls_124 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s124_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s124_1",tier:"rare",coins:15}
# s125: Obsidian Pillars
execute if score @s ec.ls_125 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s125_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s125_1",tier:"uncommon",coins:10}
# s126: End Ship Salvage
execute if score @s ec.ls_126 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s126_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s126_1",tier:"uncommon",coins:10}
# s127: Void Cartography
execute if score @s ec.ls_127 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s127_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s127_1",tier:"common",coins:5}
# s128: Ender Dragon Lore
execute if score @s ec.ls_128 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s128_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s128_1",tier:"rare",coins:15}
# s129: End Poetry
execute if score @s ec.ls_129 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s129_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s129_1",tier:"common",coins:5}
# s130: Gateway Studies
execute if score @s ec.ls_130 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s130_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s130_1",tier:"uncommon",coins:10}
# s131: End Archaeology
execute if score @s ec.ls_131 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s131_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s131_1",tier:"uncommon",coins:10}
# s132: Void Survival Kit
execute if score @s ec.ls_132 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s132_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s132_1",tier:"common",coins:5}
# s133: Purpur Architecture
execute if score @s ec.ls_133 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s133_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s133_1",tier:"uncommon",coins:10}
# s134: End Lighting
execute if score @s ec.ls_134 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s134_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s134_1",tier:"common",coins:5}
# s135: Ender Chest Secrets
execute if score @s ec.ls_135 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s135_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s135_1",tier:"uncommon",coins:10}
# s136: End Fauna
execute if score @s ec.ls_136 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s136_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s136_1",tier:"common",coins:5}
# s137: Void Alchemy
execute if score @s ec.ls_137 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s137_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s137_1",tier:"uncommon",coins:10}
# s138: End Construction
execute if score @s ec.ls_138 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s138_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s138_1",tier:"common",coins:5}
# s139: The First Dreamers
execute if score @s ec.ls_139 matches 8.. unless entity @s[advancements={evercraft:claim/lore/s139_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s139_1",tier:"mythical",coins:50}
# s140: Whispers of the Weave
execute if score @s ec.ls_140 matches 7.. unless entity @s[advancements={evercraft:claim/lore/s140_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s140_1",tier:"exquisite",coins:35}
# s141: The Patrons' Covenant
execute if score @s ec.ls_141 matches 7.. unless entity @s[advancements={evercraft:claim/lore/s141_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s141_1",tier:"exquisite",coins:35}
# s142: Furia Genesis
execute if score @s ec.ls_142 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s142_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s142_1",tier:"ornate",coins:25}
# s143: The Sundered Portal
execute if score @s ec.ls_143 matches 8.. unless entity @s[advancements={evercraft:claim/lore/s143_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s143_1",tier:"mythical",coins:50}
# s144: Echoes in the Deep
execute if score @s ec.ls_144 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s144_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s144_1",tier:"rare",coins:15}
# s145: The Five Records
execute if score @s ec.ls_145 matches 7.. unless entity @s[advancements={evercraft:claim/lore/s145_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s145_1",tier:"exquisite",coins:35}
# s146: Rift-Torn Lands
execute if score @s ec.ls_146 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s146_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s146_1",tier:"ornate",coins:25}
# s147: The Architect's Journal
execute if score @s ec.ls_147 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s147_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s147_1",tier:"rare",coins:15}
# s148: Songs of the Crimson
execute if score @s ec.ls_148 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s148_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s148_1",tier:"uncommon",coins:10}
# s149: The Alloy Almanac
execute if score @s ec.ls_149 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s149_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s149_1",tier:"uncommon",coins:10}
# s150: Beast Bonds
execute if score @s ec.ls_150 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s150_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s150_1",tier:"common",coins:5}
# s151: Tides of Fortune
execute if score @s ec.ls_151 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s151_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s151_1",tier:"uncommon",coins:10}
# s152: The Tree of Stars
execute if score @s ec.ls_152 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s152_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s152_1",tier:"rare",coins:15}
# s153: Hearthfire Memories
execute if score @s ec.ls_153 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s153_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s153_1",tier:"common",coins:5}
# s154: The Wanderer's Oath
execute if score @s ec.ls_154 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s154_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s154_1",tier:"uncommon",coins:10}
# s155: Forge of the Titans
execute if score @s ec.ls_155 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s155_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s155_1",tier:"ornate",coins:25}
# s156: Crystal Dreams
execute if score @s ec.ls_156 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s156_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s156_1",tier:"rare",coins:15}
# s157: The Lucid Threshold
execute if score @s ec.ls_157 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s157_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s157_1",tier:"uncommon",coins:10}
# s158: Moon Cycles and Madness
execute if score @s ec.ls_158 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s158_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s158_1",tier:"common",coins:5}
# s159: The Shattered Codex
execute if score @s ec.ls_159 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s159_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s159_1",tier:"ornate",coins:25}
# s160: Keeper of the Tomb
execute if score @s ec.ls_160 matches 6.. unless entity @s[advancements={evercraft:claim/lore/s160_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s160_1",tier:"common",coins:5}
# s161: The Harmonization
execute if score @s ec.ls_161 matches 5.. unless entity @s[advancements={evercraft:claim/lore/s161_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s161_1",tier:"rare",coins:15}
# s162: Prophecy of Convergence
execute if score @s ec.ls_162 matches 8.. unless entity @s[advancements={evercraft:claim/lore/s162_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s162_1",tier:"mythical",coins:50}
# s163: Echoes of Convergence
execute if score @s ec.ls_163 matches 4.. unless entity @s[advancements={evercraft:claim/lore/s163_1=true}] run function evercraft:claim/bulk_claim_stage {system:"lore",id:"s163_1",tier:"exquisite",coins:35}

# Summary feedback
execute if score @s ec.claim_cnt matches 1.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 0.8
execute if score @s ec.claim_cnt matches 1.. run particle minecraft:happy_villager ~ ~1.5 ~ 0.5 0.5 0.5 0.02 30
execute if score @s ec.claim_cnt matches 1.. run tellraw @s [{"text":"[\u2726] ","color":"gold"},{"text":"Claimed ","color":"green"},{"score":{"name":"@s","objective":"ec.claim_cnt"},"color":"yellow"},{"text":" lore set reward(s)!","color":"green"}]
execute if score @s ec.claim_cnt matches 0 run tellraw @s [{"text":"[!] ","color":"gray"},{"text":"No unclaimed lore rewards.","color":"gray"}]

# Recount unclaimed
function evercraft:claim/check_unclaimed
scoreboard players set @s adv.gui_cd 5
