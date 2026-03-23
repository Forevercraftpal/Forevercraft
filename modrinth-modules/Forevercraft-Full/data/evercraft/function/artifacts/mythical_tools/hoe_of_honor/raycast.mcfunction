# Hoe of Honor — Raycast to find tilled farmland
# Max 16 blocks (32 steps at 0.5)
execute if score #hoe_ray ec.temp matches 32.. run return 0

# Found farmland → till area + harvest area
execute if block ~ ~ ~ farmland run function evercraft:artifacts/mythical_tools/hoe_of_honor/till_area
execute if block ~ ~ ~ farmland run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_area
execute if block ~ ~ ~ farmland run return 0

# Found a crop block (on top of farmland) → check one block down
execute if predicate evercraft:mythical_tools/is_crop positioned ~ ~-1 ~ if block ~ ~ ~ farmland run function evercraft:artifacts/mythical_tools/hoe_of_honor/till_area
execute if predicate evercraft:mythical_tools/is_crop positioned ~ ~-1 ~ run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_area
execute if predicate evercraft:mythical_tools/is_crop run return 0

# Hit any solid non-air block that's not farmland/crop → stop
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air unless block ~ ~ ~ water unless block ~ ~ ~ lava run return 0

# Step forward
scoreboard players add #hoe_ray ec.temp 1
execute positioned ^ ^ ^0.5 run function evercraft:artifacts/mythical_tools/hoe_of_honor/raycast
