# ============================================================
# Campfire Stories — Check (every 5 seconds)
# Detect if 2+ players are gathered near a campfire at night
# ============================================================

# OPT: Schedule first, early exit if no players
schedule function evercraft:campfire_stories/check 100t
execute unless entity @a run return 0

# Decrement cooldown
execute if score #cf_cooldown ec.var matches 1.. run scoreboard players remove #cf_cooldown ec.var 1

# Reset gathering tags and timers for players NOT near a campfire
execute as @a[tag=ec.cf_gathering] at @s unless block ~ ~ ~ campfire unless block ~ ~ ~ soul_campfire unless block ~ ~-1 ~ campfire unless block ~ ~-1 ~ soul_campfire run function evercraft:campfire_stories/reset_gathering

# Only check at night (DayTime 13000-23000)
execute unless score #visual_time ec.var matches 13000..23000 run return 0

# OPT: Single @a at @s pass — 4 scans consolidated into 1 per-player dispatch
execute as @a at @s run function evercraft:campfire_stories/check_player
