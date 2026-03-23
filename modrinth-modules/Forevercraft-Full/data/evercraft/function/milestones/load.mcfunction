# World Milestones — Load
# Initialize all scoreboards and schedule checker

scoreboard objectives add ec.milestones trigger "View Milestones"
scoreboard players enable @a ec.milestones

# Per-player milestone tracking
scoreboard objectives add ec.rm_joined dummy
scoreboard objectives add ec.rm_page dummy

# Global counters (preserve across reloads)
execute unless score #rm_patrons ec.var matches -2147483648.. run scoreboard players set #rm_patrons ec.var 0
execute unless score #rm_pets ec.var matches -2147483648.. run scoreboard players set #rm_pets ec.var 0
execute unless score #rm_quests ec.var matches -2147483648.. run scoreboard players set #rm_quests ec.var 0
execute unless score #rm_mythicals ec.var matches -2147483648.. run scoreboard players set #rm_mythicals ec.var 0
execute unless score #rm_biomes ec.var matches -2147483648.. run scoreboard players set #rm_biomes ec.var 0
execute unless score #rm_lore ec.var matches -2147483648.. run scoreboard players set #rm_lore ec.var 0
execute unless score #rm_recipes ec.var matches -2147483648.. run scoreboard players set #rm_recipes ec.var 0
execute unless score #rm_boss_kills ec.var matches -2147483648.. run scoreboard players set #rm_boss_kills ec.var 0

# New global counters
execute unless score #rm_total_players ec.var matches -2147483648.. run scoreboard players set #rm_total_players ec.var 0
execute unless score #rm_friends ec.var matches -2147483648.. run scoreboard players set #rm_friends ec.var 0
execute unless score #rm_fr_levels ec.var matches -2147483648.. run scoreboard players set #rm_fr_levels ec.var 0
execute unless score #rm_marriages ec.var matches -2147483648.. run scoreboard players set #rm_marriages ec.var 0
execute unless score #rm_guilds ec.var matches -2147483648.. run scoreboard players set #rm_guilds ec.var 0
execute unless score #rm_guild_wars ec.var matches -2147483648.. run scoreboard players set #rm_guild_wars ec.var 0
execute unless score #rm_guild_alliances ec.var matches -2147483648.. run scoreboard players set #rm_guild_alliances ec.var 0
execute unless score #rm_guild_max_wins ec.var matches -2147483648.. run scoreboard players set #rm_guild_max_wins ec.var 0
execute unless score #rm_guild_contrib ec.var matches -2147483648.. run scoreboard players set #rm_guild_contrib ec.var 0
execute unless score #rm_dreams ec.var matches -2147483648.. run scoreboard players set #rm_dreams ec.var 0
execute unless score #rm_bounties ec.var matches -2147483648.. run scoreboard players set #rm_bounties ec.var 0
execute unless score #rm_duels ec.var matches -2147483648.. run scoreboard players set #rm_duels ec.var 0
execute unless score #rm_stories ec.var matches -2147483648.. run scoreboard players set #rm_stories ec.var 0
execute unless score #rm_coins ec.var matches -2147483648.. run scoreboard players set #rm_coins ec.var 0

# DR bonus from milestones (x10 scale, e.g. 5 = +0.5 DR)
execute unless score #rm_dr_bonus ec.var matches -2147483648.. run scoreboard players set #rm_dr_bonus ec.var 0

# Per-milestone completion flags (0=incomplete, 1=complete)
# Origins (existing)
execute unless score #rm_done_1 ec.var matches -2147483648.. run scoreboard players set #rm_done_1 ec.var 0
execute unless score #rm_done_3 ec.var matches -2147483648.. run scoreboard players set #rm_done_3 ec.var 0
execute unless score #rm_done_5 ec.var matches -2147483648.. run scoreboard players set #rm_done_5 ec.var 0
execute unless score #rm_done_6 ec.var matches -2147483648.. run scoreboard players set #rm_done_6 ec.var 0
execute unless score #rm_done_7 ec.var matches -2147483648.. run scoreboard players set #rm_done_7 ec.var 0
execute unless score #rm_done_8 ec.var matches -2147483648.. run scoreboard players set #rm_done_8 ec.var 0
execute unless score #rm_done_9 ec.var matches -2147483648.. run scoreboard players set #rm_done_9 ec.var 0
execute unless score #rm_done_10 ec.var matches -2147483648.. run scoreboard players set #rm_done_10 ec.var 0
execute unless score #rm_done_11 ec.var matches -2147483648.. run scoreboard players set #rm_done_11 ec.var 0
execute unless score #rm_done_12 ec.var matches -2147483648.. run scoreboard players set #rm_done_12 ec.var 0
# Social (13-17)
execute unless score #rm_done_13 ec.var matches -2147483648.. run scoreboard players set #rm_done_13 ec.var 0
execute unless score #rm_done_14 ec.var matches -2147483648.. run scoreboard players set #rm_done_14 ec.var 0
execute unless score #rm_done_15 ec.var matches -2147483648.. run scoreboard players set #rm_done_15 ec.var 0
execute unless score #rm_done_16 ec.var matches -2147483648.. run scoreboard players set #rm_done_16 ec.var 0
execute unless score #rm_done_17 ec.var matches -2147483648.. run scoreboard players set #rm_done_17 ec.var 0
# Guild (18-22)
execute unless score #rm_done_18 ec.var matches -2147483648.. run scoreboard players set #rm_done_18 ec.var 0
execute unless score #rm_done_19 ec.var matches -2147483648.. run scoreboard players set #rm_done_19 ec.var 0
execute unless score #rm_done_20 ec.var matches -2147483648.. run scoreboard players set #rm_done_20 ec.var 0
execute unless score #rm_done_21 ec.var matches -2147483648.. run scoreboard players set #rm_done_21 ec.var 0
execute unless score #rm_done_22 ec.var matches -2147483648.. run scoreboard players set #rm_done_22 ec.var 0
# Adventure (23-26)
execute unless score #rm_done_23 ec.var matches -2147483648.. run scoreboard players set #rm_done_23 ec.var 0
execute unless score #rm_done_24 ec.var matches -2147483648.. run scoreboard players set #rm_done_24 ec.var 0
execute unless score #rm_done_25 ec.var matches -2147483648.. run scoreboard players set #rm_done_25 ec.var 0
execute unless score #rm_done_26 ec.var matches -2147483648.. run scoreboard players set #rm_done_26 ec.var 0
# Combat (27-30)
execute unless score #rm_done_27 ec.var matches -2147483648.. run scoreboard players set #rm_done_27 ec.var 0
execute unless score #rm_done_28 ec.var matches -2147483648.. run scoreboard players set #rm_done_28 ec.var 0
execute unless score #rm_done_29 ec.var matches -2147483648.. run scoreboard players set #rm_done_29 ec.var 0
execute unless score #rm_done_30 ec.var matches -2147483648.. run scoreboard players set #rm_done_30 ec.var 0
# Mastery (31-34)
execute unless score #rm_done_31 ec.var matches -2147483648.. run scoreboard players set #rm_done_31 ec.var 0
execute unless score #rm_done_32 ec.var matches -2147483648.. run scoreboard players set #rm_done_32 ec.var 0
execute unless score #rm_done_33 ec.var matches -2147483648.. run scoreboard players set #rm_done_33 ec.var 0
execute unless score #rm_done_34 ec.var matches -2147483648.. run scoreboard players set #rm_done_34 ec.var 0

# Per-biome world tracking (25 biomes, 0=unseen by anyone)
execute unless score #rm_b0 ec.var matches -2147483648.. run scoreboard players set #rm_b0 ec.var 0
execute unless score #rm_b1 ec.var matches -2147483648.. run scoreboard players set #rm_b1 ec.var 0
execute unless score #rm_b2 ec.var matches -2147483648.. run scoreboard players set #rm_b2 ec.var 0
execute unless score #rm_b3 ec.var matches -2147483648.. run scoreboard players set #rm_b3 ec.var 0
execute unless score #rm_b4 ec.var matches -2147483648.. run scoreboard players set #rm_b4 ec.var 0
execute unless score #rm_b5 ec.var matches -2147483648.. run scoreboard players set #rm_b5 ec.var 0
execute unless score #rm_b6 ec.var matches -2147483648.. run scoreboard players set #rm_b6 ec.var 0
execute unless score #rm_b7 ec.var matches -2147483648.. run scoreboard players set #rm_b7 ec.var 0
execute unless score #rm_b8 ec.var matches -2147483648.. run scoreboard players set #rm_b8 ec.var 0
execute unless score #rm_b9 ec.var matches -2147483648.. run scoreboard players set #rm_b9 ec.var 0
execute unless score #rm_b10 ec.var matches -2147483648.. run scoreboard players set #rm_b10 ec.var 0
execute unless score #rm_b11 ec.var matches -2147483648.. run scoreboard players set #rm_b11 ec.var 0
execute unless score #rm_b12 ec.var matches -2147483648.. run scoreboard players set #rm_b12 ec.var 0
execute unless score #rm_b13 ec.var matches -2147483648.. run scoreboard players set #rm_b13 ec.var 0
execute unless score #rm_b14 ec.var matches -2147483648.. run scoreboard players set #rm_b14 ec.var 0
execute unless score #rm_b15 ec.var matches -2147483648.. run scoreboard players set #rm_b15 ec.var 0
execute unless score #rm_b16 ec.var matches -2147483648.. run scoreboard players set #rm_b16 ec.var 0
execute unless score #rm_b17 ec.var matches -2147483648.. run scoreboard players set #rm_b17 ec.var 0
execute unless score #rm_b18 ec.var matches -2147483648.. run scoreboard players set #rm_b18 ec.var 0
execute unless score #rm_b19 ec.var matches -2147483648.. run scoreboard players set #rm_b19 ec.var 0
execute unless score #rm_b20 ec.var matches -2147483648.. run scoreboard players set #rm_b20 ec.var 0
execute unless score #rm_b21 ec.var matches -2147483648.. run scoreboard players set #rm_b21 ec.var 0
execute unless score #rm_b22 ec.var matches -2147483648.. run scoreboard players set #rm_b22 ec.var 0
execute unless score #rm_b23 ec.var matches -2147483648.. run scoreboard players set #rm_b23 ec.var 0
execute unless score #rm_b24 ec.var matches -2147483648.. run scoreboard players set #rm_b24 ec.var 0

# Schedule milestone checker (every 60 seconds)
schedule function evercraft:milestones/check 60s
