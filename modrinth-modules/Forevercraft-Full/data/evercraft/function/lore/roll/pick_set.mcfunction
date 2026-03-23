# Lore Roll: Pick a set from the selected category pool
# Uses ec.lore_dim, ec.lore_cat, ec.biome_id, ec.lore_struct_id
# Result: ec.lore_set_id = set index (1-163)

scoreboard players set @s ec.lore_set_id 0

# Dispatch by category
execute if score @s ec.lore_cat matches 1 run function evercraft:lore/roll/pick_set_biome
execute if score @s ec.lore_cat matches 2 run function evercraft:lore/roll/pick_set_structure
execute if score @s ec.lore_cat matches 3 run function evercraft:lore/roll/pick_set_universal
execute if score @s ec.lore_cat matches 4 run function evercraft:lore/roll/pick_set_lore

# Fallback: if no set found (empty pool), try universal, then lore
execute if score @s ec.lore_set_id matches 0 if score @s ec.lore_cat matches 1..2 run function evercraft:lore/roll/pick_set_universal
execute if score @s ec.lore_set_id matches 0 run function evercraft:lore/roll/pick_set_lore

# Emergency fallback: hardcode set 5 (Beast Bonds) if everything fails
execute if score @s ec.lore_set_id matches 0 run scoreboard players set @s ec.lore_set_id 5
