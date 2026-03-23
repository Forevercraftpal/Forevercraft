# Journey Shovel — Start Raycast
# Run as player holding shovel, at player position
scoreboard players set #shov_ray ec.temp 0
execute anchored eyes positioned ^ ^ ^0.5 run function evercraft:artifacts/mythical_tools/journey_shovel/raycast
