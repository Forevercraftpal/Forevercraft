# Earthsong — Raycast step for area mining target
scoreboard players add #st_ray_step ec.var 1
execute if score #st_ray_step ec.var matches 17.. run return 0

# If we hit a solid pickaxe-mineable block, do 5x5 area mine here
execute if predicate evercraft:mythical_tools/is_pickaxe_mineable run function evercraft:craftforever/spirit_tools/earthsong/area_mine_5x5
execute if predicate evercraft:mythical_tools/is_pickaxe_mineable run return 0

# If hit solid non-mineable block, stop
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ water unless block ~ ~ ~ lava run return 0

# Step forward
execute positioned ^ ^ ^0.5 run function evercraft:craftforever/spirit_tools/earthsong/area_raycast
