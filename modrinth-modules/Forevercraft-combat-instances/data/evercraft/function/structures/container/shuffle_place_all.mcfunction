# Place all items from storage into random barrel slots
# Iterates through barrel_items list, placing each in a random slot

# Base case: if no items left, stop
execute unless data storage evercraft:temp barrel_items[0] run return 0

# Pick a random starting slot (0-26)
execute store result score #slot ec.temp run random value 0..26

# Store the slot number for macro use
execute store result storage evercraft:temp slot int 1.0 run scoreboard players get #slot ec.temp

# Try to place the first item in a random slot (with wraparound for occupied slots)
function evercraft:structures/container/shuffle_try_slot

# Remove the first item from the list
data remove storage evercraft:temp barrel_items[0]

# Recurse for remaining items
function evercraft:structures/container/shuffle_place_all
