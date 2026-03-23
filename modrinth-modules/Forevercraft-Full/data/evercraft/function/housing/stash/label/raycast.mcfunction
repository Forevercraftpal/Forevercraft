# ============================================================
# Stash Label — Raycast from player eyes
# Recursive, steps forward 0.2 blocks per call
# Max 25 steps = 5 blocks range
# ============================================================
scoreboard players add @s hs.temp 1

# Check if we hit a stash container — align to block grid + center for entity operations
execute if block ~ ~ ~ #evercraft:stash_containers align xyz positioned ~0.5 ~ ~0.5 run return run function evercraft:housing/stash/label/on_barrel_found

# Continue raycast if under limit and haven't hit a container
execute if score @s hs.temp matches ..25 unless block ~ ~ ~ #evercraft:stash_containers positioned ^ ^ ^0.2 run function evercraft:housing/stash/label/raycast
