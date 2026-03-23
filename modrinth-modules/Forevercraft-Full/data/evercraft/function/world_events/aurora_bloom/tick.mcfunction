# Aurora Bloom — Tick (1s)
# Timer countdown, biome modifier sync, cherry blossom particles

# Decrement timer
scoreboard players remove #we_timer ec.var 1

# Sync base modifier for new joiners only (OPT: was remove+add for ALL players every 1s)
execute as @a[tag=!ec.joined] run attribute @s luck modifier remove ec_we_aurora
execute as @a[tag=!ec.joined] run attribute @s luck modifier add ec_we_aurora 0.5 add_value

# Sync biome bonus (recalculate as players move between biomes)
execute as @a run attribute @s luck modifier remove ec_we_aurora_biome
execute as @a at @s if biome ~ ~ ~ minecraft:flower_forest run attribute @s luck modifier add ec_we_aurora_biome 3.0 add_value
execute as @a at @s if biome ~ ~ ~ minecraft:lush_caves run attribute @s luck modifier add ec_we_aurora_biome 3.0 add_value
execute as @a at @s if biome ~ ~ ~ minecraft:mushroom_fields run attribute @s luck modifier add ec_we_aurora_biome 3.0 add_value
execute as @a at @s if biome ~ ~ ~ minecraft:cherry_grove run attribute @s luck modifier add ec_we_aurora_biome 3.0 add_value
execute as @a at @s if biome ~ ~ ~ minecraft:meadow run attribute @s luck modifier add ec_we_aurora_biome 3.0 add_value

# Cherry blossom particles (every 3 seconds to save perf)
scoreboard players add #we_fx ec.var 1
execute if score #we_fx ec.var matches 3.. run scoreboard players set #we_fx ec.var 0
execute if score #we_fx ec.var matches 0 as @a at @s run particle minecraft:cherry_leaves ~ ~5 ~ 8 3 8 0.02 10
execute if score #we_fx ec.var matches 0 as @a at @s run particle minecraft:happy_villager ~ ~1 ~ 3 1 3 0.05 5

# Warnings
execute if score #we_timer ec.var matches 300 run tellraw @a [{text:"  "},{text:"[Aurora] ",color:"#55FF55"},{text:"5 minutes remaining...",color:"green"}]
execute if score #we_timer ec.var matches 60 run tellraw @a [{text:"  "},{text:"[Aurora] ",color:"#55FF55"},{text:"1 minute remaining...",color:"green"}]

# Timer expired: stop event
execute if score #we_timer ec.var matches ..0 run function evercraft:world_events/aurora_bloom/stop
