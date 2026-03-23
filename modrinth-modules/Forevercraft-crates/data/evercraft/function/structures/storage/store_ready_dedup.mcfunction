# Remove duplicate entries from ready_crates matching position+UUID
# Scores #marker_uuid0-3 and #store_x/y/z set by caller
# Rebuilds array without ALL matching entries (not just first)

data modify storage evercraft:ruin_watch _dedup_work set from storage evercraft:ruin_watch ready_crates
data modify storage evercraft:ruin_watch ready_crates set value []
function evercraft:structures/storage/store_ready_dedup_next
data remove storage evercraft:ruin_watch _dedup_work
data remove storage evercraft:ruin_watch _dedup_cur
