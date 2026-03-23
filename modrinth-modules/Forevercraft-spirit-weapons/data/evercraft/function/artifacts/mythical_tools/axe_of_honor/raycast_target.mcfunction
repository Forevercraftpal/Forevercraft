# Axe of Honor — Raycast to find target log
# Max 16 blocks (32 steps at 0.5)
execute if score #axe_ray ec.temp matches 32.. run return 0

# Hit a log → place marker at block center
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air unless block ~ ~ ~ water unless block ~ ~ ~ lava if predicate evercraft:mythical_tools/is_log align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["ec_axe_target"]}
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air unless block ~ ~ ~ water unless block ~ ~ ~ lava if predicate evercraft:mythical_tools/is_log run return 0

# Hit any other solid block → stop
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air unless block ~ ~ ~ water unless block ~ ~ ~ lava run return 0

# Step forward
scoreboard players add #axe_ray ec.temp 1
execute positioned ^ ^ ^0.5 run function evercraft:artifacts/mythical_tools/axe_of_honor/raycast_target
