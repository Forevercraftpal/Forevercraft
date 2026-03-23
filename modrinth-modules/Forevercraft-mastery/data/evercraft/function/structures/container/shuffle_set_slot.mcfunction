# Macro: place item in slot $(slot) if empty, otherwise increment and retry
# Called with storage evercraft:temp {slot: <int>, place_item: <compound>}

# Check if slot is empty (no item at this slot)
$execute if data block ~ ~ ~ Items[{Slot:$(slot)b}] run return run function evercraft:structures/container/shuffle_next_slot

# Slot is empty — set the Slot tag on the item in storage, then append atomically
# (Two-step append+merge is unsafe: chunk save between steps creates {Slot:Nb} with no id)
$data modify storage evercraft:temp place_item.Slot set value $(slot)b
data modify block ~ ~ ~ Items append from storage evercraft:temp place_item
