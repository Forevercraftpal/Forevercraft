# Check if this refresh marker belongs to the checking player
# Run as the refresh marker

# Already found a match? Skip
execute if score #refresh_match cf.temp matches 1 run return 0

# Extract marker's stored UUID
execute store result score #marker_uuid0 cf.temp run data get entity @s data.player_uuid[0]
execute store result score #marker_uuid1 cf.temp run data get entity @s data.player_uuid[1]
execute store result score #marker_uuid2 cf.temp run data get entity @s data.player_uuid[2]
execute store result score #marker_uuid3 cf.temp run data get entity @s data.player_uuid[3]

# Compare with player UUID
execute as @a[tag=cf.checking_player,limit=1] run function evercraft:structures/storage/compare_refresh_uuid

# If match found, load struct_id from this marker and mark for consumption
execute if score #refresh_match cf.temp matches 1 store result score @a[tag=cf.checking_player,limit=1] cf.struct_id run data get entity @s data.struct_id
execute if score #refresh_match cf.temp matches 1 run tag @s add cf.refresh_consumed
