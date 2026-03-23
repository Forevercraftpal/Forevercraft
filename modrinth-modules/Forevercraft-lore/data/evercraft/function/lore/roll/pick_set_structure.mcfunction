# Lore Roll: Pick a structure set based on structure_id + dimension
execute store result storage evercraft:lore temp.struct_id int 1 run scoreboard players get @s ec.lore_struct_id

# Overworld structures
execute if score @s ec.lore_dim matches 0 run function evercraft:lore/roll/pick_set_struct_ow with storage evercraft:lore temp
# Nether structures
execute if score @s ec.lore_dim matches 1 run function evercraft:lore/roll/pick_set_struct_nether with storage evercraft:lore temp
# End structures
execute if score @s ec.lore_dim matches 2 run function evercraft:lore/roll/pick_set_struct_end with storage evercraft:lore temp
