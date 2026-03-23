# Lore Roll: Pick category based on context
# ec.lore_cat: 1=biome, 2=structure, 3=universal, 4=lore
# Weights: In structure: 25/35/25/15. Not in structure: 0/45/35/20.

# Roll 1-100
execute store result score #lore_roll ec.temp run random value 1..100

# Branch: in a structure or not
execute if score @s ec.lore_struct_id matches 1.. run function evercraft:lore/roll/pick_category_struct
execute if score @s ec.lore_struct_id matches 0 run function evercraft:lore/roll/pick_category_open
