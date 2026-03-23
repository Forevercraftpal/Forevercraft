# Harmonize — Count artifacts from next satchel bag in iteration list (recursive)

# Base case: if bag_iter is empty, stop
execute unless data storage evercraft:satchel temp.bag_iter[0] run return 0

# Pop first element: copy to current_bid, then remove [0]
data modify storage evercraft:satchel temp.current_bid set from storage evercraft:satchel temp.bag_iter[0]
data remove storage evercraft:satchel temp.bag_iter[0]

# Count harmonizable artifacts from this bag's slots
function evercraft:harmonize/count_satchel_bag_slots with storage evercraft:satchel temp

# Recurse for remaining bags
function evercraft:harmonize/count_next_satchel_bag
