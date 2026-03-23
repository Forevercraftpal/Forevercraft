# Guidestone — Macro: add destination ID to player's unlock list
# Macro args: uuid3 (player), dest_id (destination guidestone ID)

# Initialize the array if it doesn't exist yet
$execute unless data storage evercraft:guidestone unlocked."$(uuid3)" run data modify storage evercraft:guidestone unlocked."$(uuid3)" set value []

# Append the destination ID
$data modify storage evercraft:guidestone unlocked."$(uuid3)" append value {id:$(dest_id)}
