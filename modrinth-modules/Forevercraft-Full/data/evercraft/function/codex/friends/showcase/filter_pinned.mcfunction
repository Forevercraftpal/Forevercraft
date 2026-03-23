# Showcase — Filter out already-pinned achievements from temp.unlocked
# Uses temp.pins to check. Removes matching entries from temp.unlocked.

# For each pin slot, remove matching entry from unlocked list
data modify storage evercraft:showcase temp.filter_id set from storage evercraft:showcase temp.pins[0].id
execute unless data storage evercraft:showcase temp{filter_id:""} run function evercraft:codex/friends/showcase/remove_by_id with storage evercraft:showcase temp

data modify storage evercraft:showcase temp.filter_id set from storage evercraft:showcase temp.pins[1].id
execute unless data storage evercraft:showcase temp{filter_id:""} run function evercraft:codex/friends/showcase/remove_by_id with storage evercraft:showcase temp

data modify storage evercraft:showcase temp.filter_id set from storage evercraft:showcase temp.pins[2].id
execute unless data storage evercraft:showcase temp{filter_id:""} run function evercraft:codex/friends/showcase/remove_by_id with storage evercraft:showcase temp
