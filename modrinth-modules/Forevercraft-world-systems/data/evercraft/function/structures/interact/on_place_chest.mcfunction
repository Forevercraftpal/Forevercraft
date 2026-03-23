# Player placed a chest - mark this position to exclude from custom structure loot
# Revoke advancement for re-detection
advancement revoke @s only evercraft:structures/interact/place_chest
advancement revoke @s only evercraft:structures/interact/place_trapped_chest

# Raycast to find the placed chest position
execute at @s anchored eyes positioned ^ ^ ^ run function evercraft:structures/interact/raycast_place
