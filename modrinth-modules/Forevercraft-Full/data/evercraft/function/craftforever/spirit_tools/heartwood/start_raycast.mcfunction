# Heartwood — Start Raycast (find log block)
scoreboard players set #st_ray ec.temp 0
execute anchored eyes positioned ^ ^ ^0.5 run function evercraft:craftforever/spirit_tools/heartwood/raycast_step
