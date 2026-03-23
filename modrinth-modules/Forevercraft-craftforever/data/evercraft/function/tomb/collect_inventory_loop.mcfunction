# Tomb System — Per-Item Inventory Restore Loop
# @s = player receiving items
# Spawns each stored item as an item entity at the player with instant pickup
# This preserves ALL item data perfectly (custom_model_data, components, etc.)

# Base case — no more items to restore
execute unless data storage evercraft:tomb_temp restore_items[0] run return 0

# Spawn item entity with dummy Item (required for valid entity) and 0 pickup delay
summon item ~ ~ ~ {Tags:["ec.tomb_give"],PickupDelay:0s,Age:0s,Item:{id:"minecraft:stone",count:1}}
# Overwrite the dummy with the real stored item data
data modify entity @e[type=item,tag=ec.tomb_give,limit=1] Item set from storage evercraft:tomb_temp restore_items[0]
# Remove Slot field from the Item compound (item entities don't use it, leftover from Inventory format)
data remove entity @e[type=item,tag=ec.tomb_give,limit=1] Item.Slot
tag @e[type=item,tag=ec.tomb_give] remove ec.tomb_give

# Remove processed item from the list
data remove storage evercraft:tomb_temp restore_items[0]

# Continue loop
function evercraft:tomb/collect_inventory_loop
