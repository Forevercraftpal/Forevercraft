# Artifact Patina — Check all 5 artifact slots for progression
# Run as player at player

# Mainhand
scoreboard players set #pat_slot_type ec.var 0
data modify storage evercraft:patina slot set value "weapon.mainhand"
data modify storage evercraft:patina data_path set value "SelectedItem"
execute if data entity @s SelectedItem.components."minecraft:custom_data".tier run function evercraft:patina/check_slot with storage evercraft:patina

# Head
scoreboard players set #pat_slot_type ec.var 1
data modify storage evercraft:patina slot set value "armor.head"
data modify storage evercraft:patina data_path set value "equipment.head"
execute if data entity @s equipment.head.components."minecraft:custom_data".tier run function evercraft:patina/check_slot with storage evercraft:patina

# Chest
scoreboard players set #pat_slot_type ec.var 2
data modify storage evercraft:patina slot set value "armor.chest"
data modify storage evercraft:patina data_path set value "equipment.chest"
execute if data entity @s equipment.chest.components."minecraft:custom_data".tier run function evercraft:patina/check_slot with storage evercraft:patina

# Legs
scoreboard players set #pat_slot_type ec.var 3
data modify storage evercraft:patina slot set value "armor.legs"
data modify storage evercraft:patina data_path set value "equipment.legs"
execute if data entity @s equipment.legs.components."minecraft:custom_data".tier run function evercraft:patina/check_slot with storage evercraft:patina

# Feet
scoreboard players set #pat_slot_type ec.var 4
data modify storage evercraft:patina slot set value "armor.feet"
data modify storage evercraft:patina data_path set value "equipment.feet"
execute if data entity @s equipment.feet.components."minecraft:custom_data".tier run function evercraft:patina/check_slot with storage evercraft:patina
