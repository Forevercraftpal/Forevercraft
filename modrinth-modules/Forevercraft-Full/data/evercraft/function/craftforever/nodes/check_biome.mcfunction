# Biome Node: Determine which biome node this location supports
# Run at a position. Sets #cf_biome_id ec.temp (0 = no valid biome, 1-15 = biome ID)

scoreboard players set #cf_biome_id ec.temp 0

# Check predicates in order (first match wins)
# Overworld biomes
execute if score #cf_biome_id ec.temp matches 0 if predicate evercraft:craftforever/biome/frozen run scoreboard players set #cf_biome_id ec.temp 1
execute if score #cf_biome_id ec.temp matches 0 if predicate evercraft:craftforever/biome/desert run scoreboard players set #cf_biome_id ec.temp 2
execute if score #cf_biome_id ec.temp matches 0 if predicate evercraft:craftforever/biome/deep_dark run scoreboard players set #cf_biome_id ec.temp 3
execute if score #cf_biome_id ec.temp matches 0 if predicate evercraft:craftforever/biome/jungle run scoreboard players set #cf_biome_id ec.temp 4
execute if score #cf_biome_id ec.temp matches 0 if predicate evercraft:craftforever/biome/ocean run scoreboard players set #cf_biome_id ec.temp 5
execute if score #cf_biome_id ec.temp matches 0 if predicate evercraft:craftforever/biome/lush_caves run scoreboard players set #cf_biome_id ec.temp 10
execute if score #cf_biome_id ec.temp matches 0 if predicate evercraft:craftforever/biome/mountain run scoreboard players set #cf_biome_id ec.temp 11
execute if score #cf_biome_id ec.temp matches 0 if predicate evercraft:craftforever/biome/badlands run scoreboard players set #cf_biome_id ec.temp 12
execute if score #cf_biome_id ec.temp matches 0 if predicate evercraft:craftforever/biome/dark_forest run scoreboard players set #cf_biome_id ec.temp 13
execute if score #cf_biome_id ec.temp matches 0 if predicate evercraft:craftforever/biome/swamp run scoreboard players set #cf_biome_id ec.temp 14
execute if score #cf_biome_id ec.temp matches 0 if predicate evercraft:craftforever/biome/cherry run scoreboard players set #cf_biome_id ec.temp 15
execute if score #cf_biome_id ec.temp matches 0 if predicate evercraft:craftforever/biome/mushroom run scoreboard players set #cf_biome_id ec.temp 9

# Nether biomes
execute if score #cf_biome_id ec.temp matches 0 if predicate evercraft:craftforever/biome/crimson run scoreboard players set #cf_biome_id ec.temp 6
execute if score #cf_biome_id ec.temp matches 0 if predicate evercraft:craftforever/biome/warped run scoreboard players set #cf_biome_id ec.temp 7

# End biomes
execute if score #cf_biome_id ec.temp matches 0 if predicate evercraft:craftforever/biome/end_islands run scoreboard players set #cf_biome_id ec.temp 8
