# ============================================================
# Campfire Stories — Trigger Story
# Run as the player who triggered the gathering condition
# Selects and tells a story from history, or a generic one
# ============================================================

# Cooldown already set by try_gather (prevents multiplayer race condition)

# Campfire ambiance sound for all nearby players
execute at @s run playsound minecraft:block.campfire.crackle master @a[distance=..8] ~ ~ ~ 0.6 0.8

# Check if we have any history
execute store result score #cf_count ec.var run data get storage evercraft:campfire history
execute if score #cf_count ec.var matches 0 run function evercraft:campfire_stories/tell/generic
execute if score #cf_count ec.var matches 0 run return 0

# Pick a random index from history
# Use a temp score seeded by gametime for randomness
execute store result score #cf_pick ec.var run time query gametime
scoreboard players operation #cf_pick ec.var %= #cf_count ec.var

# Anti-repeat: if this index matches any of last 3, offset by 1
execute if score #cf_pick ec.var = #cf_last1 ec.var run scoreboard players add #cf_pick ec.var 1
execute if score #cf_pick ec.var = #cf_last2 ec.var run scoreboard players add #cf_pick ec.var 1
execute if score #cf_pick ec.var = #cf_last3 ec.var run scoreboard players add #cf_pick ec.var 1
scoreboard players operation #cf_pick ec.var %= #cf_count ec.var

# Shift anti-repeat window
scoreboard players operation #cf_last3 ec.var = #cf_last2 ec.var
scoreboard players operation #cf_last2 ec.var = #cf_last1 ec.var
scoreboard players operation #cf_last1 ec.var = #cf_pick ec.var

# Copy the picked entry to temp storage for the macro
execute store result storage evercraft:campfire pick int 1 run scoreboard players get #cf_pick ec.var
function evercraft:campfire_stories/tell/from_history with storage evercraft:campfire

# Achievement tracking: only credit players actively gathering (prevents AFK farming)
execute as @a[distance=..8,tag=ec.cf_gathering] run scoreboard players add @s ach.cf_listened 1

# Realm milestone: story witnessed
function evercraft:milestones/increment/story_witnessed
