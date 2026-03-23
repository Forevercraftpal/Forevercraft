# Biome Detection (Full) - Sets ec.biome_id for the executing player
# Called directly by systems that need guaranteed-fresh biome data (crate opens)
# For cached version, call evercraft:biome/detect instead
# OPT: return run exits on first match (was 25 checks always, now 1-25)

# Default to -1 (unknown biome)
scoreboard players set @s ec.biome_id -1

# Check biomes — most common first, return on match
execute if predicate evercraft:biome/is_plains run return run scoreboard players set @s ec.biome_id 0
execute if predicate evercraft:biome/is_forest run return run scoreboard players set @s ec.biome_id 1
execute if predicate evercraft:biome/is_flower_forest run return run scoreboard players set @s ec.biome_id 2
execute if predicate evercraft:biome/is_dark_forest run return run scoreboard players set @s ec.biome_id 3
execute if predicate evercraft:biome/is_taiga run return run scoreboard players set @s ec.biome_id 4
execute if predicate evercraft:biome/is_mountain run return run scoreboard players set @s ec.biome_id 5
execute if predicate evercraft:biome/is_jungle run return run scoreboard players set @s ec.biome_id 6
execute if predicate evercraft:biome/is_desert run return run scoreboard players set @s ec.biome_id 7
execute if predicate evercraft:biome/is_savanna run return run scoreboard players set @s ec.biome_id 8
execute if predicate evercraft:biome/is_ocean run return run scoreboard players set @s ec.biome_id 9
execute if predicate evercraft:biome/is_river run return run scoreboard players set @s ec.biome_id 10
execute if predicate evercraft:biome/is_swamp run return run scoreboard players set @s ec.biome_id 11
execute if predicate evercraft:biome/is_mushroom run return run scoreboard players set @s ec.biome_id 12
execute if predicate evercraft:biome/is_ice run return run scoreboard players set @s ec.biome_id 13
execute if predicate evercraft:biome/is_badlands run return run scoreboard players set @s ec.biome_id 14
execute if predicate evercraft:biome/is_lush_caves run return run scoreboard players set @s ec.biome_id 15
execute if predicate evercraft:biome/is_dripstone_caves run return run scoreboard players set @s ec.biome_id 16
execute if predicate evercraft:biome/is_deep_dark run return run scoreboard players set @s ec.biome_id 17
execute if predicate evercraft:biome/is_nether_wastes run return run scoreboard players set @s ec.biome_id 18
execute if predicate evercraft:biome/is_crimson_forest run return run scoreboard players set @s ec.biome_id 19
execute if predicate evercraft:biome/is_warped_forest run return run scoreboard players set @s ec.biome_id 20
execute if predicate evercraft:biome/is_basalt_deltas run return run scoreboard players set @s ec.biome_id 21
execute if predicate evercraft:biome/is_soul_sand_valley run return run scoreboard players set @s ec.biome_id 22
execute if predicate evercraft:biome/is_the_end run return run scoreboard players set @s ec.biome_id 23
execute if predicate evercraft:biome/is_wind run scoreboard players set @s ec.biome_id 24
