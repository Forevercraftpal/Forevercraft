# Artisan Forge — Raycast to find placed lodestone
# Max 16 blocks (32 steps at 0.5)
execute if score #cf_ray ec.cf_temp matches 32.. run return 0

# Check current position for lodestone without existing markers (avoid claiming glyphforge/transmute/guidestone lodestones)
execute if block ~ ~ ~ minecraft:lodestone unless entity @e[type=marker,tag=RF.Marker,distance=..1] unless entity @e[type=marker,tag=TX.Marker,distance=..1] unless entity @e[type=marker,tag=ec.gs_marker,distance=..1] unless entity @e[type=marker,tag=CF.Marker,distance=..1] align xyz run function evercraft:craftforever/forging/place_table
execute if block ~ ~ ~ minecraft:lodestone unless entity @e[type=marker,tag=RF.Marker,distance=..1] unless entity @e[type=marker,tag=TX.Marker,distance=..1] unless entity @e[type=marker,tag=ec.gs_marker,distance=..1] unless entity @e[type=marker,tag=CF.Marker,distance=..1] run return 1

# Continue past lodestones that already have markers
execute if block ~ ~ ~ minecraft:lodestone run scoreboard players add #cf_ray ec.cf_temp 1
execute if block ~ ~ ~ minecraft:lodestone positioned ^ ^ ^0.5 run function evercraft:craftforever/forging/raycast_place
execute if block ~ ~ ~ minecraft:lodestone run return 0

# Step forward
scoreboard players add #cf_ray ec.cf_temp 1
execute positioned ^ ^ ^0.5 run function evercraft:craftforever/forging/raycast_place
