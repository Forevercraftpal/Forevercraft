# Remove a ready crate entry from storage when re-looted
# Run as the player. Position scores cf.pos_x/y/z available.
# Iterates storage ready_crates, rebuilds without the matching entry

# Store player UUID for comparison
execute store result score #marker_uuid0 cf.temp run data get entity @s UUID[0]
execute store result score #marker_uuid1 cf.temp run data get entity @s UUID[1]
execute store result score #marker_uuid2 cf.temp run data get entity @s UUID[2]
execute store result score #marker_uuid3 cf.temp run data get entity @s UUID[3]

# Copy to working list and clear original — we'll rebuild it without the match
data modify storage evercraft:ruin_watch _rem_work set from storage evercraft:ruin_watch ready_crates
data modify storage evercraft:ruin_watch ready_crates set value []
scoreboard players set #removed cf.temp 0
function evercraft:structures/storage/remove_ready_next
data remove storage evercraft:ruin_watch _rem_work
data remove storage evercraft:ruin_watch _rem_current
