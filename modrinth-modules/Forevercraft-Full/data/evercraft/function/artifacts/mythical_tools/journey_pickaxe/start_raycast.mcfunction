# Journey Pickaxe — Start Raycast
# Run as player holding pickaxe, at player position
scoreboard players set #pick_ray ec.temp 0
execute anchored eyes positioned ^ ^ ^0.5 run function evercraft:artifacts/mythical_tools/journey_pickaxe/raycast_target
