# ============================================================
# Find Lectern - Raycast from player eyes
# Called after player places book on lectern
# Max 16 blocks (32 steps at 0.5)
# ============================================================

execute if score #lectern_ray ec.temp matches 32.. run return 0

# Check if we hit a lectern at current position
execute if block ~ ~ ~ minecraft:lectern run function evercraft:quests/board/check_village_proximity
execute if block ~ ~ ~ minecraft:lectern run return 0

# Step forward
scoreboard players add #lectern_ray ec.temp 1
execute positioned ^ ^ ^0.5 run function evercraft:quests/board/find_lectern
