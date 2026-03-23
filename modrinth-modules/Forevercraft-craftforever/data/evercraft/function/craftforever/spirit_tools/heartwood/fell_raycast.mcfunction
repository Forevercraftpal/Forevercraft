# Heartwood — Raycast to find log for tree felling
scoreboard players add #st_ray_step ec.var 1
execute if score #st_ray_step ec.var matches 13.. run return 0

# If current block is a log, start tree fell
execute if predicate evercraft:mythical_tools/is_log run function evercraft:craftforever/spirit_tools/heartwood/fell_start
execute if predicate evercraft:mythical_tools/is_log run return 0

# If solid non-log, stop
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ water unless predicate evercraft:mythical_tools/is_log run return 0

# Step forward
execute positioned ^ ^ ^0.5 run function evercraft:craftforever/spirit_tools/heartwood/fell_raycast
