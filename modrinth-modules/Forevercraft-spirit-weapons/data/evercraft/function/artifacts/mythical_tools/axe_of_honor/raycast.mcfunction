# Axe of Honor — Raycast to find log block
# Max 16 blocks (32 steps at 0.5)
execute if score #axe_use_ray ec.temp matches 32.. run return 0

# Hit a log → start timber
execute if predicate evercraft:mythical_tools/is_log run function evercraft:artifacts/mythical_tools/axe_of_honor/timber_start
execute if predicate evercraft:mythical_tools/is_log run return 0

# Hit any solid non-log block → stop
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air unless block ~ ~ ~ water unless block ~ ~ ~ lava run return 0

# Step forward
scoreboard players add #axe_use_ray ec.temp 1
execute positioned ^ ^ ^0.5 run function evercraft:artifacts/mythical_tools/axe_of_honor/raycast
