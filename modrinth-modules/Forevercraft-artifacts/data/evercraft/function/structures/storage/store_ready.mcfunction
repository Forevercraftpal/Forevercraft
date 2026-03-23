# Store ready crate data in data storage for Ruin Watch persistence
# Run as the marker entity, after conversion to cf.refresh_marker
# Deduplicates: removes any existing entry at same position+UUID before appending

# Build the new entry
data modify storage evercraft:ruin_watch temp set value {struct_id:0,x:0,y:0,z:0,uuid:[I;0,0,0,0]}
execute store result storage evercraft:ruin_watch temp.struct_id int 1 run data get entity @s data.struct_id
execute store result storage evercraft:ruin_watch temp.x int 1 run data get entity @s Pos[0]
execute store result storage evercraft:ruin_watch temp.y int 1 run data get entity @s Pos[1]
execute store result storage evercraft:ruin_watch temp.z int 1 run data get entity @s Pos[2]
data modify storage evercraft:ruin_watch temp.uuid set from entity @s data.player_uuid

# Load position+UUID into scores for dedup check
execute store result score #marker_uuid0 cf.temp run data get entity @s data.player_uuid[0]
execute store result score #marker_uuid1 cf.temp run data get entity @s data.player_uuid[1]
execute store result score #marker_uuid2 cf.temp run data get entity @s data.player_uuid[2]
execute store result score #marker_uuid3 cf.temp run data get entity @s data.player_uuid[3]
execute store result score #store_x cf.temp run data get entity @s Pos[0]
execute store result score #store_y cf.temp run data get entity @s Pos[1]
execute store result score #store_z cf.temp run data get entity @s Pos[2]

# Initialize ready_crates list if it doesn't exist yet (append fails on non-existent path)
execute unless data storage evercraft:ruin_watch ready_crates run data modify storage evercraft:ruin_watch ready_crates set value []

# Remove any existing duplicate entry, then append fresh
execute if data storage evercraft:ruin_watch ready_crates[0] run function evercraft:structures/storage/store_ready_dedup
data modify storage evercraft:ruin_watch ready_crates append from storage evercraft:ruin_watch temp
data remove storage evercraft:ruin_watch temp

# NOTE: Notification is handled by notify_ready (called separately from tick_single_marker)
# Do NOT notify here — it would cause a double notification
