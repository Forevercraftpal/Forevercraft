# Player opened a chest or trapped chest - check if it's in a structure
# Revoke advancement immediately for re-detection
advancement revoke @s only evercraft:structures/interact/open_chest
advancement revoke @s only evercraft:structures/interact/open_trapped_chest

# Raycast to find the chest block they interacted with
execute at @s anchored eyes positioned ^ ^ ^ run function evercraft:structures/interact/raycast
