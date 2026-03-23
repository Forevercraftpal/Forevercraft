# Biome Mastery — Per-player tick
# @s = player, at @s

# Detect current biome (sets ec.biome_id)
function evercraft:biome/detect

# Check if biome changed since last tick
execute unless score @s ec.biome_id = @s ec.bm_prev run function evercraft:biome_mastery/on_biome_change

# Update previous biome tracker
scoreboard players operation @s ec.bm_prev = @s ec.biome_id

# Skip increment for unknown biome (-1)
execute if score @s ec.biome_id matches -1 run return 0

# Increment time for current biome + read back into ec.bm_time (single macro call)
execute store result storage evercraft:bm_temp id int 1 run scoreboard players get @s ec.biome_id
function evercraft:biome_mastery/increment with storage evercraft:bm_temp

# Check for level-up at exact thresholds
function evercraft:biome_mastery/check_levelup

# Refresh mastery perk (7s effects, refreshed every 5s)
# OPT: Only remove tag if player has it (avoids unnecessary tag op every 5s for all players)
execute if entity @s[tag=ec.bm_forage_bonus] run tag @s remove ec.bm_forage_bonus
function evercraft:biome_mastery/apply_perk
