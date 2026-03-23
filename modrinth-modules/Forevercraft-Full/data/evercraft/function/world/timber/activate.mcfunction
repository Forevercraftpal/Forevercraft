# Timber (5% Any Axe) — Activate
# Run as the player who picked up a timber marker
# Remove the marker item, find the nearest log, and fell it

# Remove ALL marker items from inventory (prevent chain triggers)
clear @s minecraft:stick[custom_data~{ec_timber_marker:1b}]

# Raycast from player eyes to find the nearest log in their line of sight
execute at @s run function evercraft:world/timber/find_log

# Clean up any timber marker items on the ground nearby (dropped by felled logs)
execute at @s run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ec_timber_marker:1b}}}},distance=..32]
