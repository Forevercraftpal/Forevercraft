# Axe of Honor — Start Raycast
# Run as player holding axe, at player position
scoreboard players set #axe_ray ec.temp 0
execute anchored eyes positioned ^ ^ ^0.5 run function evercraft:artifacts/mythical_tools/axe_of_honor/raycast_target
