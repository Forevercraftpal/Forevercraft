# Shuffle barrel contents into random slots
# Run at barrel position. Reads all items, clears, places back in random order.

# Count items
execute store result score #barrel_count ec.temp run data get block ~ ~ ~ Items

# Only shuffle if 2+ items
execute unless score #barrel_count ec.temp matches 2.. run return 0

# Copy all items to storage
data modify storage evercraft:temp barrel_items set from block ~ ~ ~ Items

# Clear the barrel completely
data remove block ~ ~ ~ Items

# Generate a random permutation of 27 slot indices
# We'll use 27 random values and sort by them to get a permutation
# Simpler: just assign each item a random slot, using linear probe for collisions

# Initialize slot tracking
scoreboard players set #shuffle_idx ec.temp 0

# Process each item
function evercraft:structures/container/shuffle_place_all
