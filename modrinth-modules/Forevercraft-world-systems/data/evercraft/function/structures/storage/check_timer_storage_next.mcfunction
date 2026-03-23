# Process next ready crate entry from storage working list
# Recursive — pops first entry, checks UUID, displays if match, then recurses

# Base case: no more entries
execute unless data storage evercraft:ruin_watch _work[0] run return 0

# Load entry data into scores
data modify storage evercraft:ruin_watch _current set from storage evercraft:ruin_watch _work[0]
execute store result score #timer_struct cf.temp run data get storage evercraft:ruin_watch _current.struct_id
execute store result score #timer_x cf.temp run data get storage evercraft:ruin_watch _current.x
execute store result score #timer_y cf.temp run data get storage evercraft:ruin_watch _current.y
execute store result score #timer_z cf.temp run data get storage evercraft:ruin_watch _current.z

# Load UUID from storage entry
execute store result score #marker_uuid0 cf.temp run data get storage evercraft:ruin_watch _current.uuid[0]
execute store result score #marker_uuid1 cf.temp run data get storage evercraft:ruin_watch _current.uuid[1]
execute store result score #marker_uuid2 cf.temp run data get storage evercraft:ruin_watch _current.uuid[2]
execute store result score #marker_uuid3 cf.temp run data get storage evercraft:ruin_watch _current.uuid[3]

# Compare UUID with checking player (reuses existing compare function)
scoreboard players set #timer_match cf.temp 0
execute as @a[tag=cf.checking_player,limit=1] run function evercraft:structures/storage/compare_timer_uuid

# If match, show Ready! line
execute if score #timer_match cf.temp matches 1 run scoreboard players add #timer_count cf.temp 1
execute if score #timer_match cf.temp matches 1 as @a[tag=cf.checking_player,limit=1] run function evercraft:structures/storage/show_timer_ready

# Pop processed entry and recurse
data remove storage evercraft:ruin_watch _work[0]
function evercraft:structures/storage/check_timer_storage_next
