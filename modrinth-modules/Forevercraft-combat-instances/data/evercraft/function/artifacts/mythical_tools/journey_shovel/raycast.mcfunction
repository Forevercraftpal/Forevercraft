# Journey Shovel — Raycast to find target block
# Max 16 blocks (32 steps at 0.5)
execute if score #shov_ray ec.temp matches 32.. run return 0

# Hit shovel-mineable block → place marker
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air unless block ~ ~ ~ water unless block ~ ~ ~ lava if predicate evercraft:mythical_tools/is_shovel_mineable align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["ec_shov_target"]}
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air unless block ~ ~ ~ water unless block ~ ~ ~ lava if predicate evercraft:mythical_tools/is_shovel_mineable run return 0

# Hit any other solid block → stop
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air unless block ~ ~ ~ water unless block ~ ~ ~ lava run return 0

# Step forward
scoreboard players add #shov_ray ec.temp 1
execute positioned ^ ^ ^0.5 run function evercraft:artifacts/mythical_tools/journey_shovel/raycast
