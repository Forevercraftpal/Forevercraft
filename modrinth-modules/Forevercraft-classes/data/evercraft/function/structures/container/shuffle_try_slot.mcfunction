# Try to place barrel_items[0] into slot #slot. If occupied, increment and retry.
# Max 27 attempts (barrel has 27 slots)

scoreboard players set #attempts ec.temp 0

# Copy item data to a temp path for the macro — strip original Slot tag
data modify storage evercraft:temp place_item set from storage evercraft:temp barrel_items[0]
data remove storage evercraft:temp place_item.Slot

# Try current slot via macro
function evercraft:structures/container/shuffle_set_slot with storage evercraft:temp
