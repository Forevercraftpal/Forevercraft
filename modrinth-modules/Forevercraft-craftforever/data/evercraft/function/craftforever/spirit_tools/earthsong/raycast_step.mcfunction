# Earthsong — Raycast step (max 12 blocks = 24 steps)
execute if score #st_ray ec.temp matches 24.. run return 0

# Hit mineable block → place marker
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air unless block ~ ~ ~ water unless block ~ ~ ~ lava if predicate evercraft:mythical_tools/is_pickaxe_mineable align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["ec.st_pick_target"]}
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air unless block ~ ~ ~ water unless block ~ ~ ~ lava if predicate evercraft:mythical_tools/is_pickaxe_mineable run return 0

# Hit non-mineable solid → stop
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air unless block ~ ~ ~ water unless block ~ ~ ~ lava run return 0

# Step forward
scoreboard players add #st_ray ec.temp 1
execute positioned ^ ^ ^0.5 run function evercraft:craftforever/spirit_tools/earthsong/raycast_step
