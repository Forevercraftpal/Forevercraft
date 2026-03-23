# World Milestones — Periodic Check (every 60s)
# Evaluates all incomplete milestones against current world counters

# ============================================================
# DYNAMIC THRESHOLDS — compute from total unique players
# ============================================================
# 75% threshold (community milestones)
scoreboard players operation #rm_75pct ec.var = #rm_total_players ec.var
scoreboard players operation #rm_75pct ec.var *= #75 adv.temp
scoreboard players operation #rm_75pct ec.var /= #100 adv.temp
execute if score #rm_75pct ec.var matches ..1 run scoreboard players set #rm_75pct ec.var 2

# 50% threshold (harder milestones)
scoreboard players operation #rm_50pct ec.var = #rm_total_players ec.var
scoreboard players operation #rm_50pct ec.var *= #50 ec.const
scoreboard players operation #rm_50pct ec.var /= #100 adv.temp
execute if score #rm_50pct ec.var matches ..1 run scoreboard players set #rm_50pct ec.var 2

# ============================================================
# ORIGINS (1-12) — existing milestones
# ============================================================

# === Milestone 1: First Light — First patron kill world-wide ===
execute unless score #rm_done_1 ec.var matches 1 if score #rm_patrons ec.var matches 1.. run function evercraft:milestones/complete/first_light

# === Milestone 3: Brave New World — 5 unique biomes explored ===
execute unless score #rm_done_3 ec.var matches 1 if score #rm_biomes ec.var matches 5.. run function evercraft:milestones/complete/brave_new_world

# === Milestone 5: The Hunt Begins — 25 patron kills ===
execute unless score #rm_done_5 ec.var matches 1 if score #rm_patrons ec.var matches 25.. run function evercraft:milestones/complete/the_hunt

# === Milestone 6: Companion Collectors — 25 unique pets discovered ===
execute unless score #rm_done_6 ec.var matches 1 if score #rm_pets ec.var matches 25.. run function evercraft:milestones/complete/companion_collectors

# === Milestone 7: Seasoned Chefs — 10 recipes cooked ===
execute unless score #rm_done_7 ec.var matches 1 if score #rm_recipes ec.var matches 10.. run function evercraft:milestones/complete/seasoned_chefs

# === Milestone 8: Lore Seekers — 50 lore pieces collected ===
execute unless score #rm_done_8 ec.var matches 1 if score #rm_lore ec.var matches 50.. run function evercraft:milestones/complete/lore_seekers

# === Milestone 9: Slayers of the Deep — First boss killed ===
execute unless score #rm_done_9 ec.var matches 1 if score #rm_boss_kills ec.var matches 1.. run function evercraft:milestones/complete/slayers_deep

# === Milestone 10: Across All Lands — All 25 biomes visited ===
execute unless score #rm_done_10 ec.var matches 1 if score #rm_biomes ec.var matches 25.. run function evercraft:milestones/complete/across_all_lands

# === Milestone 11: Legendary Arsenal — 5 mythical artifacts ===
execute unless score #rm_done_11 ec.var matches 1 if score #rm_mythicals ec.var matches 5.. run function evercraft:milestones/complete/legendary_arsenal

# === Milestone 12: Quest Masters — 100 quests completed ===
execute unless score #rm_done_12 ec.var matches 1 if score #rm_quests ec.var matches 100.. run function evercraft:milestones/complete/quest_masters

# ============================================================
# SOCIAL (13-17)
# ============================================================

# === Milestone 13: First Friends — 10 friendships formed ===
execute unless score #rm_done_13 ec.var matches 1 if score #rm_friends ec.var matches 10.. run function evercraft:milestones/complete/first_friends

# === Milestone 14: Bonds of the Heart — 20 friendship level-ups ===
execute unless score #rm_done_14 ec.var matches 1 if score #rm_fr_levels ec.var matches 20.. run function evercraft:milestones/complete/bonds_of_heart

# === Milestone 15: Eternal Vow — First marriage ===
execute unless score #rm_done_15 ec.var matches 1 if score #rm_marriages ec.var matches 1.. run function evercraft:milestones/complete/eternal_vow

# === Milestone 16: Love Conquers All — 2 married couples ===
execute unless score #rm_done_16 ec.var matches 1 if score #rm_marriages ec.var matches 2.. run function evercraft:milestones/complete/love_conquers_all

# === Milestone 17: Found Family — 75% of players have 2+ friends ===
execute unless score #rm_done_17 ec.var matches 1 run function evercraft:milestones/check_dynamic/found_family

# ============================================================
# GUILD & WARFARE (18-22)
# ============================================================

# === Milestone 18: Banner Raised — First guild created ===
execute unless score #rm_done_18 ec.var matches 1 if score #rm_guilds ec.var matches 1.. run function evercraft:milestones/complete/banner_raised

# === Milestone 19: Declaration of War — First guild war ===
execute unless score #rm_done_19 ec.var matches 1 if score #rm_guild_wars ec.var matches 1.. run function evercraft:milestones/complete/declaration_of_war

# === Milestone 20: United Front — First guild alliance ===
execute unless score #rm_done_20 ec.var matches 1 if score #rm_guild_alliances ec.var matches 1.. run function evercraft:milestones/complete/united_front

# === Milestone 21: Conquest — A guild wins 3 wars ===
execute unless score #rm_done_21 ec.var matches 1 if score #rm_guild_max_wins ec.var matches 3.. run function evercraft:milestones/complete/conquest

# === Milestone 22: Guild Dominion — 10,000 guild contributions ===
execute unless score #rm_done_22 ec.var matches 1 if score #rm_guild_contrib ec.var matches 10000.. run function evercraft:milestones/complete/guild_dominion

# ============================================================
# EXPLORATION & ADVENTURE (23-26)
# ============================================================

# === Milestone 23: Dream Walkers — 50 dream completions ===
execute unless score #rm_done_23 ec.var matches 1 if score #rm_dreams ec.var matches 50.. run function evercraft:milestones/complete/dream_walkers

# === Milestone 24: Bounty Board Legends — 100 bounties ===
execute unless score #rm_done_24 ec.var matches 1 if score #rm_bounties ec.var matches 100.. run function evercraft:milestones/complete/bounty_legends

# === Milestone 25: The Expedition — 50% explored 15+ biomes ===
execute unless score #rm_done_25 ec.var matches 1 run function evercraft:milestones/check_dynamic/the_expedition

# === Milestone 26: Hearthstone Haven — 75% have homes ===
execute unless score #rm_done_26 ec.var matches 1 run function evercraft:milestones/check_dynamic/hearthstone_haven

# ============================================================
# COMBAT & PROGRESSION (27-30)
# ============================================================

# === Milestone 27: The Hundred — 100 patron kills ===
execute unless score #rm_done_27 ec.var matches 1 if score #rm_patrons ec.var matches 100.. run function evercraft:milestones/complete/the_hundred

# === Milestone 28: Ascended — 50% reached DR 20+ ===
execute unless score #rm_done_28 ec.var matches 1 run function evercraft:milestones/check_dynamic/ascended

# === Milestone 29: Duel of Legends — 50 duels ===
execute unless score #rm_done_29 ec.var matches 1 if score #rm_duels ec.var matches 50.. run function evercraft:milestones/complete/duel_of_legends

# === Milestone 30: Party of Heroes — checked on boss kill, not here ===

# ============================================================
# MASTERY & ENDGAME (31-34)
# ============================================================

# === Milestone 31: Full Bestiary — 96 companions ===
execute unless score #rm_done_31 ec.var matches 1 if score #rm_pets ec.var matches 96.. run function evercraft:milestones/complete/full_bestiary

# === Milestone 32: Campfire Chronicles — 25 stories ===
execute unless score #rm_done_32 ec.var matches 1 if score #rm_stories ec.var matches 25.. run function evercraft:milestones/complete/campfire_chronicles

# === Milestone 33: The Gilded Realm — 5,000 coins ===
execute unless score #rm_done_33 ec.var matches 1 if score #rm_coins ec.var matches 5000.. run function evercraft:milestones/complete/gilded_realm

# === Milestone 34: Eternal Legacy — all other 31 milestones complete ===
execute unless score #rm_done_34 ec.var matches 1 run function evercraft:milestones/check_dynamic/eternal_legacy

# Reschedule
schedule function evercraft:milestones/check 60s
