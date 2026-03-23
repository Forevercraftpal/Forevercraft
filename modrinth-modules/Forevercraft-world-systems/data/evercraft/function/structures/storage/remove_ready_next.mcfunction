# Process next entry in removal working list
# Rebuilds ready_crates without the matching entry (first match only)
# UUID scores #marker_uuid0-3 and position cf.pos_x/y/z set by caller
# #removed = 0 means we haven't found the match yet, 1 means we already removed it

# Base case: no more entries
execute unless data storage evercraft:ruin_watch _rem_work[0] run return 0

# Load entry
data modify storage evercraft:ruin_watch _rem_current set from storage evercraft:ruin_watch _rem_work[0]
execute store result score #rem_uuid0 cf.temp run data get storage evercraft:ruin_watch _rem_current.uuid[0]
execute store result score #rem_uuid1 cf.temp run data get storage evercraft:ruin_watch _rem_current.uuid[1]
execute store result score #rem_uuid2 cf.temp run data get storage evercraft:ruin_watch _rem_current.uuid[2]
execute store result score #rem_uuid3 cf.temp run data get storage evercraft:ruin_watch _rem_current.uuid[3]
execute store result score #rem_x cf.temp run data get storage evercraft:ruin_watch _rem_current.x
execute store result score #rem_y cf.temp run data get storage evercraft:ruin_watch _rem_current.y
execute store result score #rem_z cf.temp run data get storage evercraft:ruin_watch _rem_current.z

# Assume match until proven otherwise
scoreboard players set #rem_match cf.temp 1
execute unless score #rem_uuid0 cf.temp = #marker_uuid0 cf.temp run scoreboard players set #rem_match cf.temp 0
execute unless score #rem_uuid1 cf.temp = #marker_uuid1 cf.temp run scoreboard players set #rem_match cf.temp 0
execute unless score #rem_uuid2 cf.temp = #marker_uuid2 cf.temp run scoreboard players set #rem_match cf.temp 0
execute unless score #rem_uuid3 cf.temp = #marker_uuid3 cf.temp run scoreboard players set #rem_match cf.temp 0
execute unless score #rem_x cf.temp = @s cf.pos_x run scoreboard players set #rem_match cf.temp 0
execute unless score #rem_y cf.temp = @s cf.pos_y run scoreboard players set #rem_match cf.temp 0
execute unless score #rem_z cf.temp = @s cf.pos_z run scoreboard players set #rem_match cf.temp 0

# If already removed a previous match, this one isn't a candidate — force keep
execute if score #removed cf.temp matches 1 run scoreboard players set #rem_match cf.temp 0

# Match found — skip this entry (don't re-add) and mark as removed
execute if score #rem_match cf.temp matches 1 run scoreboard players set #removed cf.temp 1

# No match — keep this entry in the rebuilt array
execute if score #rem_match cf.temp matches 0 run data modify storage evercraft:ruin_watch ready_crates append from storage evercraft:ruin_watch _rem_work[0]

# Pop and recurse
data remove storage evercraft:ruin_watch _rem_work[0]
function evercraft:structures/storage/remove_ready_next
