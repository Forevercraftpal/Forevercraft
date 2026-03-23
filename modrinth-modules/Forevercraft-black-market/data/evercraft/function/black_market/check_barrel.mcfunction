# ============================================================
# Black Market — Check Barrel (Raycast Entry)
# Run at: player, anchored eyes, positioned ^ ^ ^
# Raycasts forward to find a Black Market barrel
# Sets ec.bm_temp to 1 if BM barrel found, 0 otherwise
# ============================================================
scoreboard players set @s ec.bm_temp 0
scoreboard players set #bm_ray ec.bm_temp 0
function evercraft:black_market/check_barrel_step
