# Meteor Shower — Spawn Meteor
# Executed as a random player, at their position
# Places a DR-weighted ore block at a random nearby surface position

# Summon temp marker at player pos
summon marker ~ ~ ~ {Tags:["METEOR.temp"]}

# Spread to random surface position within 100 blocks of player
spreadplayers ~ ~ 30 100 false @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest]

# Get player's Dream Rate (luck * 10 for integer comparison)
execute store result score @s ec.temp run attribute @s luck get 10

# Roll 1..100 for ore type selection
execute store result score #meteor_roll ec.temp run random value 1..100

# === Low DR (< 10.0, score < 100): Iron 50%, Gold 30%, Copper 20% ===
execute if score @s ec.temp matches ..99 if score #meteor_roll ec.temp matches 1..50 at @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest] run setblock ~ ~ ~ iron_ore
execute if score @s ec.temp matches ..99 if score #meteor_roll ec.temp matches 51..80 at @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest] run setblock ~ ~ ~ gold_ore
execute if score @s ec.temp matches ..99 if score #meteor_roll ec.temp matches 81..100 at @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest] run setblock ~ ~ ~ copper_ore

# === Mid DR (10-20, score 100-199): Gold 40%, Lapis 25%, Redstone 25%, Diamond 10% ===
execute if score @s ec.temp matches 100..199 if score #meteor_roll ec.temp matches 1..40 at @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest] run setblock ~ ~ ~ gold_ore
execute if score @s ec.temp matches 100..199 if score #meteor_roll ec.temp matches 41..65 at @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest] run setblock ~ ~ ~ lapis_ore
execute if score @s ec.temp matches 100..199 if score #meteor_roll ec.temp matches 66..90 at @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest] run setblock ~ ~ ~ redstone_ore
execute if score @s ec.temp matches 100..199 if score #meteor_roll ec.temp matches 91..100 at @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest] run setblock ~ ~ ~ diamond_ore

# === High DR (20+, score 200+): Diamond 30%, Emerald 30%, Gold 20%, Debris 5%, Amethyst 15% ===
execute if score @s ec.temp matches 200.. if score #meteor_roll ec.temp matches 1..30 at @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest] run setblock ~ ~ ~ diamond_ore
execute if score @s ec.temp matches 200.. if score #meteor_roll ec.temp matches 31..60 at @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest] run setblock ~ ~ ~ emerald_ore
execute if score @s ec.temp matches 200.. if score #meteor_roll ec.temp matches 61..80 at @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest] run setblock ~ ~ ~ gold_ore
execute if score @s ec.temp matches 200.. if score #meteor_roll ec.temp matches 81..85 at @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest] run setblock ~ ~ ~ ancient_debris
execute if score @s ec.temp matches 200.. if score #meteor_roll ec.temp matches 86..100 at @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest] run setblock ~ ~ ~ amethyst_block

# Impact effects at meteor landing
execute at @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest] run particle minecraft:explosion ~ ~1 ~ 1 1 1 0.1 3
execute at @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest] run particle minecraft:end_rod ~ ~1 ~ 2 2 2 0.15 15
execute at @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest] run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 0.3 1.5
execute at @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest] run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1.0 0.8

# Convert temp marker to ore tracker for cleanup on event stop
execute as @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest] run tag @s add METEOR.Ore
execute as @e[type=marker,tag=METEOR.temp,limit=1,sort=nearest] run tag @s remove METEOR.temp

# Safety: kill any remaining temp markers (spreadplayers failure edge case)
kill @e[type=marker,tag=METEOR.temp]
