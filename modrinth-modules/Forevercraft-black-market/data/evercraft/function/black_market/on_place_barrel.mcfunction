# ============================================================
# Black Market — On Place Barrel
# Triggered by advancement when player places a BM barrel
# Raycasts forward to find the barrel and spawn marker + label
# ============================================================

# Revoke advancement for re-detection
advancement revoke @s only evercraft:black_market/place_barrel

# Try raycast to find the placed barrel
tag @s add ec.searching
scoreboard players set #bm_placed ec.bm_temp 0
scoreboard players set #bm_ray ec.bm_temp 0
execute at @s anchored eyes positioned ^ ^ ^ run function evercraft:black_market/find_placed_step

# Fallback: grid scan if raycast missed (oblique angles)
execute if score #bm_placed ec.bm_temp matches 0 at @s align xyz run function evercraft:black_market/scan_for_barrel
tag @s remove ec.searching
