# Unknown Structure Dungeon — Per-player scan
# Run as: player holding Dungeon Key, at their position
# Checks: NOT at known structure + crate markers nearby → hint

# Skip if at a known dungeon structure
execute if predicate evercraft:dungeon/at_structure run tag @s remove dg.unknown_detected
execute if predicate evercraft:dungeon/at_structure run return 0

# Skip if a dungeon is already active
execute if score #dg_active ec.var matches 1 run tag @s remove dg.unknown_detected
execute if score #dg_active ec.var matches 1 run return 0

# Check for crate system markers nearby (proof of natural structure chests)
execute unless entity @e[type=marker,tag=cf.looted_marker,distance=..48] unless entity @e[type=marker,tag=cf.refresh_marker,distance=..48] run tag @s remove dg.unknown_detected
execute unless entity @e[type=marker,tag=cf.looted_marker,distance=..48] unless entity @e[type=marker,tag=cf.refresh_marker,distance=..48] run return 0

# All checks passed — unknown structure detected!
tag @s add dg.unknown_detected

# Show actionbar hint
title @s actionbar [{text:"Unknown dungeon site detected",color:"gold",italic:true},{text:" — use your key!",color:"yellow",italic:true}]

# Pulse particles at nearby crate markers to highlight the area
execute as @e[type=marker,tag=cf.looted_marker,distance=..48] at @s run particle minecraft:witch ~ ~0.5 ~ 0.3 0.3 0.3 0.02 3 force
execute as @e[type=marker,tag=cf.refresh_marker,distance=..48] at @s run particle minecraft:witch ~ ~0.5 ~ 0.3 0.3 0.3 0.02 3 force
