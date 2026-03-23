# Earthsong — Start raycast for 5x5 area mine
# Find the block being mined to center the 5x5 plane on it
scoreboard players set #st_ray_step ec.var 0
execute anchored eyes positioned ^ ^ ^0.5 run function evercraft:craftforever/spirit_tools/earthsong/area_raycast
