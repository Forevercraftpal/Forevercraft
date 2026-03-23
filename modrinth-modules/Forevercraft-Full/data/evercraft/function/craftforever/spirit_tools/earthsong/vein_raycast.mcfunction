# Earthsong — Raycast to find target ore (max 8 blocks / 16 steps)
# Recursive: steps forward ^0.5 each call

scoreboard players add #st_ray_step ec.var 1
execute if score #st_ray_step ec.var matches 17.. run return 0

# If current block is an ore, place target marker and stop
execute if predicate evercraft:mythical_tools/is_ore run summon marker ~ ~ ~ {Tags:["ec_st_vein_target"]}
execute if predicate evercraft:mythical_tools/is_ore run return 0

# If solid non-ore block, stop
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ water unless block ~ ~ ~ lava run return 0

# Step forward
execute positioned ^ ^ ^0.5 run function evercraft:craftforever/spirit_tools/earthsong/vein_raycast
