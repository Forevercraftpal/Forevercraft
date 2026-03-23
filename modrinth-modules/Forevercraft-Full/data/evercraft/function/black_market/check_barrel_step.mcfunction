# ============================================================
# Black Market — Barrel Raycast Step (recursive)
# Checks for barrel at current position, continues forward
# Max 40 steps (8 blocks at 0.2 per step)
# ============================================================
scoreboard players add #bm_ray ec.bm_temp 1

# Check if we hit a barrel at current position
execute if block ~ ~ ~ minecraft:barrel run function evercraft:black_market/check_barrel_hit

# Continue raycast if not found and under limit
execute if score @s ec.bm_temp matches 0 if score #bm_ray ec.bm_temp matches ..40 positioned ^ ^ ^0.2 run function evercraft:black_market/check_barrel_step
