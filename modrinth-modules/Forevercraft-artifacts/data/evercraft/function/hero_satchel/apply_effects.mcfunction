# Hero's Satchel — Apply passive + AoE effects from ALL registered hero bags
# Unlike the Essentials Satchel, this satchel preserves AoE abilities

# Ensure player has a hero satchel ID (for registry lookup)
execute unless score @s ec.hsatch_id matches 1.. run return 0

# Copy player ID to temp
execute store result storage evercraft:hero_satchel temp.id int 1 run scoreboard players get @s ec.hsatch_id

# Copy the player's bag registry to iteration list
function evercraft:hero_satchel/copy_registry with storage evercraft:hero_satchel temp

# Start recursive iteration over registered bags
function evercraft:hero_satchel/apply_next_bag
