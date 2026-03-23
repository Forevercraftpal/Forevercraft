# === DUSTWALKER — ON BREAK ===
# Run as marker at broken block position.
# Standing = 5x5 excavation, Sneaking = column bore

# Anti-cascade: skip if ability already fired this tick
execute if entity @p[distance=..6,tag=ec.st_held,scores={ec.st_tool=4},tag=ec.st_mining] run return 0
execute as @p[distance=..6,tag=ec.st_held,scores={ec.st_tool=4}] run tag @s add ec.st_mining
execute as @p[distance=..6,tag=ec.st_held,scores={ec.st_tool=4}] run function evercraft:craftforever/spirit_tools/dustwalker/dispatch_mine

# Grant crafting affinity XP: 3 per block excavated
execute as @p[distance=..6,tag=ec.st_held,scores={ec.st_tool=4}] run function evercraft:craft_affinity/grant {class_id:4, delta:3}
execute as @p[distance=..6,tag=ec.st_held,scores={ec.st_tool=4}] run function evercraft:craft_affinity/try_crate_drop
