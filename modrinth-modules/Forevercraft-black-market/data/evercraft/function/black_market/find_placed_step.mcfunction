# ============================================================
# Black Market — Find Placed Barrel (Raycast Step)
# Recursively searches forward for a barrel without a BM marker
# ============================================================
scoreboard players add #bm_ray ec.bm_temp 1

# Check for a barrel without an existing BM marker nearby
execute if block ~ ~ ~ minecraft:barrel unless entity @e[type=marker,tag=BM.Barrel,distance=..1] run function evercraft:black_market/setup_placed_barrel

# Continue raycast if not found and under limit
execute if score #bm_placed ec.bm_temp matches 0 if score #bm_ray ec.bm_temp matches ..40 positioned ^ ^ ^0.2 run function evercraft:black_market/find_placed_step
