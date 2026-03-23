# Biome Node: Summon node entities at current position
# Run at the ground-level position where node should appear
# #cf_biome_id ec.temp must be set (1-15)

# Data marker (stores biome ID, spawn gametime, min rank)
summon marker ~ ~ ~ {Tags:["ec.cf_node","ec.cf_node_data","ec.cf_node_new"]}
execute store result entity @e[type=marker,tag=ec.cf_node_new,limit=1,distance=..1] data.spawn_time long 1 run time query gametime
execute store result entity @e[type=marker,tag=ec.cf_node_new,limit=1,distance=..1] data.biome_id int 1 run scoreboard players get #cf_biome_id ec.temp
execute store result entity @e[type=marker,tag=ec.cf_node_new,limit=1,distance=..1] data.min_rank int 1 run scoreboard players get #cf_min_rank ec.temp
tag @e[type=marker,tag=ec.cf_node_new,limit=1,distance=..1] remove ec.cf_node_new

# Interaction entity (right-click target, slightly above ground)
summon interaction ~ ~0.15 ~ {Tags:["ec.cf_node","ec.cf_node_click"],width:0.8f,height:0.6f,response:1b}

# Dispatch to biome-specific visual spawning
execute if score #cf_biome_id ec.temp matches 1 run function evercraft:craftforever/nodes/biomes/frozen
execute if score #cf_biome_id ec.temp matches 2 run function evercraft:craftforever/nodes/biomes/desert
execute if score #cf_biome_id ec.temp matches 3 run function evercraft:craftforever/nodes/biomes/deep_dark
execute if score #cf_biome_id ec.temp matches 4 run function evercraft:craftforever/nodes/biomes/jungle
execute if score #cf_biome_id ec.temp matches 5 run function evercraft:craftforever/nodes/biomes/ocean
execute if score #cf_biome_id ec.temp matches 6 run function evercraft:craftforever/nodes/biomes/crimson
execute if score #cf_biome_id ec.temp matches 7 run function evercraft:craftforever/nodes/biomes/warped
execute if score #cf_biome_id ec.temp matches 8 run function evercraft:craftforever/nodes/biomes/end
execute if score #cf_biome_id ec.temp matches 9 run function evercraft:craftforever/nodes/biomes/mushroom
execute if score #cf_biome_id ec.temp matches 10 run function evercraft:craftforever/nodes/biomes/lush_caves
execute if score #cf_biome_id ec.temp matches 11 run function evercraft:craftforever/nodes/biomes/mountain
execute if score #cf_biome_id ec.temp matches 12 run function evercraft:craftforever/nodes/biomes/badlands
execute if score #cf_biome_id ec.temp matches 13 run function evercraft:craftforever/nodes/biomes/dark_forest
execute if score #cf_biome_id ec.temp matches 14 run function evercraft:craftforever/nodes/biomes/swamp
execute if score #cf_biome_id ec.temp matches 15 run function evercraft:craftforever/nodes/biomes/cherry
