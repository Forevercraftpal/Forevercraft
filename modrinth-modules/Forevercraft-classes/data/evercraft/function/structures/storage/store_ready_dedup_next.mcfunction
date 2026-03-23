# Process next entry for dedup — removes ALL entries matching position+UUID
# Scores #marker_uuid0-3 and #store_x/y/z set by store_ready

execute unless data storage evercraft:ruin_watch _dedup_work[0] run return 0

# Load entry
data modify storage evercraft:ruin_watch _dedup_cur set from storage evercraft:ruin_watch _dedup_work[0]
execute store result score #dd_uuid0 cf.temp run data get storage evercraft:ruin_watch _dedup_cur.uuid[0]
execute store result score #dd_uuid1 cf.temp run data get storage evercraft:ruin_watch _dedup_cur.uuid[1]
execute store result score #dd_uuid2 cf.temp run data get storage evercraft:ruin_watch _dedup_cur.uuid[2]
execute store result score #dd_uuid3 cf.temp run data get storage evercraft:ruin_watch _dedup_cur.uuid[3]
execute store result score #dd_x cf.temp run data get storage evercraft:ruin_watch _dedup_cur.x
execute store result score #dd_y cf.temp run data get storage evercraft:ruin_watch _dedup_cur.y
execute store result score #dd_z cf.temp run data get storage evercraft:ruin_watch _dedup_cur.z

# Check if this entry matches
scoreboard players set #dd_match cf.temp 1
execute unless score #dd_uuid0 cf.temp = #marker_uuid0 cf.temp run scoreboard players set #dd_match cf.temp 0
execute unless score #dd_uuid1 cf.temp = #marker_uuid1 cf.temp run scoreboard players set #dd_match cf.temp 0
execute unless score #dd_uuid2 cf.temp = #marker_uuid2 cf.temp run scoreboard players set #dd_match cf.temp 0
execute unless score #dd_uuid3 cf.temp = #marker_uuid3 cf.temp run scoreboard players set #dd_match cf.temp 0
execute unless score #dd_x cf.temp = #store_x cf.temp run scoreboard players set #dd_match cf.temp 0
execute unless score #dd_y cf.temp = #store_y cf.temp run scoreboard players set #dd_match cf.temp 0
execute unless score #dd_z cf.temp = #store_z cf.temp run scoreboard players set #dd_match cf.temp 0

# Keep non-matching entries, discard matches
execute if score #dd_match cf.temp matches 0 run data modify storage evercraft:ruin_watch ready_crates append from storage evercraft:ruin_watch _dedup_work[0]

# Pop and recurse
data remove storage evercraft:ruin_watch _dedup_work[0]
function evercraft:structures/storage/store_ready_dedup_next
