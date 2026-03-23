# === EARTHSONG — ON BREAK (block mined detected via marker) ===
# Run as marker at broken block position. Find nearest player with Earthsong.
# Standing = 5x5 area mine, Sneaking = vein mine

# Anti-cascade: skip if ability already fired this tick
execute if entity @p[distance=..6,tag=ec.st_held,scores={ec.st_tool=1},tag=ec.st_mining] run return 0

# Set flag BEFORE dispatch (blocks re-entry from area/vein destroying more blocks)
execute as @p[distance=..6,tag=ec.st_held,scores={ec.st_tool=1}] run tag @s add ec.st_mining
execute as @p[distance=..6,tag=ec.st_held,scores={ec.st_tool=1}] at @s run function evercraft:craftforever/spirit_tools/earthsong/dispatch_mine

# Grant crafting affinity XP: 10 per ore mined
execute as @p[distance=..6,tag=ec.st_held,scores={ec.st_tool=1}] run function evercraft:craft_affinity/grant {class_id:1, delta:10}
# Crate drop chance on mine
execute as @p[distance=..6,tag=ec.st_held,scores={ec.st_tool=1}] run function evercraft:craft_affinity/try_crate_drop
