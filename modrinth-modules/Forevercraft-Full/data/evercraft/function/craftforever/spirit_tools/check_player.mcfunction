# === SPIRIT TOOLS — PER-PLAYER RAYCAST PLACEMENT ===
# Places target markers for break detection (same pattern as Journey Pickaxe)
# Run as @a at @s who have ec.st_held tag
# FIX #1: Kill previous markers near THIS player before placing new ones
# This prevents multiplayer marker collision (each player only has 1 marker)

# Earthsong (pickaxe) — kill old pick markers near us, then raycast
execute if score @s ec.st_tool matches 1 run kill @e[type=marker,tag=ec.st_pick_target,distance=..16]
execute if score @s ec.st_tool matches 1 run function evercraft:craftforever/spirit_tools/earthsong/start_raycast

# Dustwalker (shovel)
execute if score @s ec.st_tool matches 4 run kill @e[type=marker,tag=ec.st_shov_target,distance=..16]
execute if score @s ec.st_tool matches 4 run function evercraft:craftforever/spirit_tools/dustwalker/start_raycast

# Heartwood (axe)
execute if score @s ec.st_tool matches 5 run kill @e[type=marker,tag=ec.st_axe_target,distance=..16]
execute if score @s ec.st_tool matches 5 run function evercraft:craftforever/spirit_tools/heartwood/start_raycast
