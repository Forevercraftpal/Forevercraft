# Biome Mastery — Biome changed, recompute level and apply DR
# @s = player, ec.biome_id = new biome

# Skip if new biome is unknown
execute if score @s ec.biome_id matches -1 run return 0

# Read new biome's accumulated time
execute store result storage evercraft:bm_temp id int 1 run scoreboard players get @s ec.biome_id
function evercraft:biome_mastery/read_time with storage evercraft:bm_temp

# Compute level for new biome
scoreboard players set @s ec.bm_level 0
execute if score @s ec.bm_time matches 1800.. run scoreboard players set @s ec.bm_level 1
execute if score @s ec.bm_time matches 7200.. run scoreboard players set @s ec.bm_level 2
execute if score @s ec.bm_time matches 21600.. run scoreboard players set @s ec.bm_level 3
execute if score @s ec.bm_time matches 54000.. run scoreboard players set @s ec.bm_level 4
execute if score @s ec.bm_time matches 108000.. run scoreboard players set @s ec.bm_level 5

# Update dream rate modifier for this biome's mastery
function evercraft:biome_mastery/apply_dr

# Apply/remove mastery perk for new biome
tag @s remove ec.bm_forage_bonus
function evercraft:biome_mastery/apply_perk
