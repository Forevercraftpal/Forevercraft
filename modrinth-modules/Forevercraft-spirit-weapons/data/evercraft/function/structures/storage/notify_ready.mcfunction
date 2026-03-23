# Notify the player that a structure loot timer has expired
# Run as the marker entity, after it has been converted to cf.refresh_marker

# Extract marker's stored UUID
execute store result score #marker_uuid0 cf.temp run data get entity @s data.player_uuid[0]
execute store result score #marker_uuid1 cf.temp run data get entity @s data.player_uuid[1]
execute store result score #marker_uuid2 cf.temp run data get entity @s data.player_uuid[2]
execute store result score #marker_uuid3 cf.temp run data get entity @s data.player_uuid[3]

# Find the matching player and notify them
execute as @a run function evercraft:structures/storage/notify_ready_check
