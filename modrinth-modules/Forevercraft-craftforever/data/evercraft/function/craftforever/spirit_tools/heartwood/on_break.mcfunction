# === HEARTWOOD — ON BREAK (log mined detected via marker) ===
# Run as marker at broken log position.
# Standing = Spirit Fell (whole tree), Sneaking = Precision Chop (single → planks)

# Anti-cascade: skip if ability already fired this tick
execute if entity @p[distance=..6,tag=ec.st_held,scores={ec.st_tool=5},tag=ec.st_mining] run return 0
execute as @p[distance=..6,tag=ec.st_held,scores={ec.st_tool=5}] run tag @s add ec.st_mining
execute as @p[distance=..6,tag=ec.st_held,scores={ec.st_tool=5}] run function evercraft:craftforever/spirit_tools/heartwood/dispatch_mine

# Grant crafting affinity XP: 5 per log
execute as @p[distance=..6,tag=ec.st_held,scores={ec.st_tool=5}] run function evercraft:craft_affinity/grant {class_id:2, delta:5}
execute as @p[distance=..6,tag=ec.st_held,scores={ec.st_tool=5}] run function evercraft:craft_affinity/try_crate_drop
