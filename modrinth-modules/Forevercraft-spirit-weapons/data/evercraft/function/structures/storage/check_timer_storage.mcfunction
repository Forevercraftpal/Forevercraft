# Iterate storage-based ready crates for Ruin Watch display
# Called from check_timer when storage has entries
# Uses a working copy to iterate non-destructively

data modify storage evercraft:ruin_watch _work set from storage evercraft:ruin_watch ready_crates
function evercraft:structures/storage/check_timer_storage_next
data remove storage evercraft:ruin_watch _work
data remove storage evercraft:ruin_watch _current
