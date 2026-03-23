# Meteor Shower — Tick (1s)
# 3-second spawn counter, sky particles, modifier sync

# Sync Dream Rate modifier for new joiners only (OPT: was remove+add for ALL players every 1s)
execute as @a[tag=!ec.joined] run attribute @s luck modifier remove ec_cal_meteor
execute as @a[tag=!ec.joined] run attribute @s luck modifier add ec_cal_meteor 0.5 add_value

# Sky particles — end_rod falling from high (ambient starfall)
execute as @a at @s run particle minecraft:end_rod ~ ~30 ~ 15 10 15 0.02 5

# FX counter (3-second cycle)
scoreboard players add #cal_meteor_fx ec.var 1
execute if score #cal_meteor_fx ec.var matches 3.. run scoreboard players set #cal_meteor_fx ec.var 0

# Every 3 seconds: spawn a meteor near a random online player
execute if score #cal_meteor_fx ec.var matches 0 as @a[sort=random,limit=1,gamemode=!spectator] at @s run function evercraft:calendar/events/meteor_shower/spawn_meteor

# Check for collected meteor ores (block at marker position mined = air)
execute as @e[type=marker,tag=METEOR.Ore] at @s if block ~ ~ ~ air run scoreboard players add @p[gamemode=!spectator,distance=..30] ach.meteor_ores_event 1
execute as @e[type=marker,tag=METEOR.Ore] at @s if block ~ ~ ~ air run kill @s
