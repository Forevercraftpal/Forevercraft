# Hero's Satchel — On right-click (using_item trigger)
# DO NOT revoke advancement here — using_item fires every tick while held.
# Revoked in menu/close instead.

# If already in menu, do nothing
execute if entity @s[tag=ec.hsatch_in_menu] run return 0

# Ensure player has a hero satchel ID (for registry)
execute unless score @s ec.hsatch_id matches 1.. run function evercraft:hero_satchel/assign_id

# Copy player ID to temp
execute store result storage evercraft:hero_satchel temp.id int 1 run scoreboard players get @s ec.hsatch_id

# Read bag_id from held item (0 = unregistered, needs stamping)
execute store result score @s ec.hbag_id run data get entity @s SelectedItem.components."minecraft:custom_data".bag_id

# If bag_id is 0, stamp a new one via hopper minecart intermediary
execute if score @s ec.hbag_id matches 0 run function evercraft:hero_satchel/stamp_bag_id

# Clear any unstamped duplicate that use-item mechanic may restore after stamp
clear @s minecraft:leather[custom_data~{hero_satchel:true,bag_id:0}]

# Hero's Satchel always has 11 slots
scoreboard players set @s ec.hsatch_slots 11

# Store bag_id to temp for menu macros
execute store result storage evercraft:hero_satchel temp.bid int 1 run scoreboard players get @s ec.hbag_id

# Safety: initialize bag storage if somehow missing
function evercraft:hero_satchel/init_bag_if_missing with storage evercraft:hero_satchel temp

# Open the menu
function evercraft:hero_satchel/menu/open
