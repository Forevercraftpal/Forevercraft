# Pantry — On right-click (consume_item trigger)
# consume_item fires BEFORE the game removes the item.
# Tag for 1-tick delayed restore, then handle menu logic.

advancement revoke @s only evercraft:pantry/open

# Tag for delayed restore (next tick restores the pantry item)
# Detect which hand held the pantry for correct restore
tag @s remove ec.pantry_mainhand
execute if data entity @s SelectedItem.components."minecraft:custom_data"{pantry:true} run tag @s add ec.pantry_mainhand
tag @s add ec.pantry_restore

# If already in menu, toggle close
execute if entity @s[tag=ec.pantry_in_menu] run function evercraft:pantry/menu/close
execute if entity @s[tag=ec.pantry_in_menu] run return 0

# Ensure player has a pantry ID
execute unless score @s ec.pantry_id matches 1.. run function evercraft:pantry/assign_id

# Read pantry_id from held item (still present this tick, before removal)
execute store result score @s ec.pid run data get entity @s SelectedItem.components."minecraft:custom_data".pantry_id

# If pantry_id is 0, stamp a new one via hopper minecart intermediary
execute if score @s ec.pid matches 0 run function evercraft:pantry/stamp_id

# Clear any unstamped duplicate
clear @s minecraft:oak_shelf[custom_data~{pantry:true,pantry_id:0b}]

# Store pantry_id to temp for menu macros
execute store result storage evercraft:pantry temp.pid int 1 run scoreboard players get @s ec.pid

# Save item data for restore (preserves stamped pantry_id)
data modify storage evercraft:pantry temp.restore_item set from entity @s SelectedItem

# Initialize storage if missing
function evercraft:pantry/init_if_missing with storage evercraft:pantry temp

# Open the menu
function evercraft:pantry/menu/open
