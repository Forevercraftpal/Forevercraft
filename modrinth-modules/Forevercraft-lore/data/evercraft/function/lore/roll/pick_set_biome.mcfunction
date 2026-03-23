# Lore Roll: Pick a biome set based on current biome + dimension
# Pools keyed by: ow_biome_{id}, nether_biome_{id}, end_biome_{id}

# Store biome_id to storage for macro
execute store result storage evercraft:lore temp.biome_id int 1 run scoreboard players get @s ec.biome_id

# Dispatch by dimension
execute if score @s ec.lore_dim matches 0 run function evercraft:lore/roll/pick_set_biome_ow with storage evercraft:lore temp
execute if score @s ec.lore_dim matches 1 run function evercraft:lore/roll/pick_set_biome_nether with storage evercraft:lore temp
execute if score @s ec.lore_dim matches 2 run function evercraft:lore/roll/pick_set_biome_end with storage evercraft:lore temp
