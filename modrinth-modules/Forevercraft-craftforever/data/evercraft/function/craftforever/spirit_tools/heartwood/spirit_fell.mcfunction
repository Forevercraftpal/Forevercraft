# Heartwood — Spirit Fell: Fell entire tree + auto-replant
# Adapted from Axe of Honor timber system but UNLIMITED

# Raycast to find the log block
scoreboard players set #st_ray_step ec.var 0
execute anchored eyes positioned ^ ^ ^0.5 run function evercraft:craftforever/spirit_tools/heartwood/fell_raycast
