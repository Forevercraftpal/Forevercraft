# Hero's Satchel — Register bag_id to player's registry (macro)
# Args: id (player hero satchel ID), new_bid (bag ID to register)

# Ensure player's registry list exists
$execute unless data storage evercraft:hero_satchel registry.$(id) run data modify storage evercraft:hero_satchel registry.$(id) set value []

# Append the new bag_id to the registry
$data modify storage evercraft:hero_satchel registry.$(id) append value $(new_bid)
