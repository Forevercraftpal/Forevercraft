# Crop Auto-Replant — Raycast (Macro)
# $(crop) = the crop block to replant
# Steps forward 0.5 blocks at a time, max 16 blocks (32 steps)

execute if score #rh_ray ec.temp matches 32.. run return 0

# Hit farmland → replant crop one block above if empty
$execute if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:$(crop)[age=0]
execute if block ~ ~ ~ farmland run return 0

# Hit soul sand → replant nether wart one block above if empty
$execute if block ~ ~ ~ soul_sand if block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:$(crop)[age=0]
execute if block ~ ~ ~ soul_sand run return 0

# Check one block BELOW for farmland/soul_sand (raycast often passes at crop level, not farmland level)
$execute if block ~ ~-1 ~ farmland if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:$(crop)[age=0]
execute if block ~ ~-1 ~ farmland if block ~ ~ ~ air run return 0
$execute if block ~ ~-1 ~ soul_sand if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:$(crop)[age=0]
execute if block ~ ~-1 ~ soul_sand if block ~ ~ ~ air run return 0

# Hit any existing crop block → stop (something's already growing)
execute if predicate evercraft:mythical_tools/is_crop run return 0

# Hit any solid non-passable block → stop
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air unless block ~ ~ ~ water unless block ~ ~ ~ lava run return 0

# Step forward (through air toward the farmland)
scoreboard players add #rh_ray ec.temp 1
$execute positioned ^ ^ ^0.5 run function evercraft:crop_harvest/replant_raycast {crop:"$(crop)"}
