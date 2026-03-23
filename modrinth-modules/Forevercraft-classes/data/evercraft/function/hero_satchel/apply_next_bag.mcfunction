# Hero's Satchel — Apply effects from next bag in iteration list (recursive)

# Base case: if bag_iter is empty, stop
execute unless data storage evercraft:hero_satchel temp.bag_iter[0] run return 0

# Pop first element: copy to current_bid, then remove [0]
data modify storage evercraft:hero_satchel temp.current_bid set from storage evercraft:hero_satchel temp.bag_iter[0]
data remove storage evercraft:hero_satchel temp.bag_iter[0]

# Apply effects from this bag's slots (11 slots for hero)
function evercraft:hero_satchel/apply_bag_slots with storage evercraft:hero_satchel temp

# Recurse for remaining bags
function evercraft:hero_satchel/apply_next_bag
