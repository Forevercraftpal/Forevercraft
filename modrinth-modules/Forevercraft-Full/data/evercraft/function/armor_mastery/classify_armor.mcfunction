# Determine armor slot type from stored slot name
# Sets #am_armor_type: 1=head, 2=chest, 3=legs, 4=feet
scoreboard players set #am_armor_type ec.var 0
execute if data storage evercraft:armor_mastery {current_slot:"head"} run scoreboard players set #am_armor_type ec.var 1
execute if data storage evercraft:armor_mastery {current_slot:"chest"} run scoreboard players set #am_armor_type ec.var 2
execute if data storage evercraft:armor_mastery {current_slot:"legs"} run scoreboard players set #am_armor_type ec.var 3
execute if data storage evercraft:armor_mastery {current_slot:"feet"} run scoreboard players set #am_armor_type ec.var 4
