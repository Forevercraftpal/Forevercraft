# Tomb System — Shatter Items Loop
# Iterates through inventory items in temp storage, spawning each as an item entity

# Check if there are items left to drop
execute unless data storage evercraft:tomb_temp shatter_items[0] run return 0

# Spawn the first item in the list as an item entity at grave position
# Use summon + data modify to create the item entity
summon item ~ ~0.5 ~ {Tags:["ec.tomb_drop"],PickupDelay:40s,Age:0s}
data modify entity @e[type=item,tag=ec.tomb_drop,limit=1] Item set from storage evercraft:tomb_temp shatter_items[0]
tag @e[type=item,tag=ec.tomb_drop] remove ec.tomb_drop

# Remove the first item from the list
data remove storage evercraft:tomb_temp shatter_items[0]

# Continue loop
function evercraft:tomb/shatter_items_loop
