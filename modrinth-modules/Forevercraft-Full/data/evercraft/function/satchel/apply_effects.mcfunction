# Satchel — Apply passive effects from ALL registered bags
# Run as the player who has at least one satchel

# Ensure player has a satchel ID (for registry lookup)
execute unless score @s ec.satchel_id matches 1.. run return 0

# Copy player ID to temp
execute store result storage evercraft:satchel temp.id int 1 run scoreboard players get @s ec.satchel_id

# Copy the player's bag registry to iteration list
function evercraft:satchel/copy_registry with storage evercraft:satchel temp

# Start recursive iteration over registered bags
function evercraft:satchel/apply_next_bag
