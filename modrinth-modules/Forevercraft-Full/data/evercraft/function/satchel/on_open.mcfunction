# Satchel — On right-click (using_item trigger)
# DO NOT revoke advancement here — using_item fires every tick while held.
# Keeping it granted prevents re-trigger. Revoked in menu/close instead.

# If already in menu, do nothing (advancement stays granted, blocks re-trigger)
execute if entity @s[tag=ec.satchel_in_menu] run return 0

# Ensure player has a satchel ID (for registry)
execute unless score @s ec.satchel_id matches 1.. run function evercraft:satchel/assign_id

# Copy player ID to temp
execute store result storage evercraft:satchel temp.id int 1 run scoreboard players get @s ec.satchel_id

# Read bag_id from held item (0 = unregistered, needs stamping)
execute store result score @s ec.bag_id run data get entity @s SelectedItem.components."minecraft:custom_data".bag_id

# If bag_id is 0, stamp a new one via hopper minecart intermediary
execute if score @s ec.bag_id matches 0 run function evercraft:satchel/stamp_bag_id

# Clear any unstamped duplicate that use-item mechanic may restore after stamp
clear @s minecraft:leather[custom_data~{satchel:true,bag_id:0}]

# Read max_slots directly from the held item
execute store result score @s ec.satchel_slots run data get entity @s SelectedItem.components."minecraft:custom_data".max_slots

# Store bag_id to temp for menu macros
execute store result storage evercraft:satchel temp.bid int 1 run scoreboard players get @s ec.bag_id

# Safety: initialize bag storage if somehow missing
function evercraft:satchel/init_bag_if_missing with storage evercraft:satchel temp

# Open the menu
function evercraft:satchel/menu/open
