# Player placed a barrel - mark this position to exclude from custom structure loot
# Revoke advancement for re-detection
advancement revoke @s only evercraft:structures/interact/place_barrel

# Raycast to find the placed barrel position
execute at @s anchored eyes positioned ^ ^ ^ run function evercraft:structures/interact/raycast_place_barrel
