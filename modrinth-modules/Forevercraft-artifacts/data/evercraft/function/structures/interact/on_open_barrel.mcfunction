# Player opened a barrel - check if it's in a structure
# Revoke advancement immediately for re-detection
advancement revoke @s only evercraft:structures/interact/open_barrel

# Check for Black Market barrel first (intercept before structure raycast)
scoreboard players set @s ec.bm_temp 0
execute at @s anchored eyes positioned ^ ^ ^ run function evercraft:black_market/check_barrel
execute if score @s ec.bm_temp matches 1 run return 0

# Raycast to find the barrel block they interacted with
execute at @s anchored eyes positioned ^ ^ ^ run function evercraft:structures/interact/raycast_barrel
