# Friend Gift — Macro: check and deliver queued gifts
# Macro args: login_uuid3

$execute unless data storage evercraft:friends "u$(login_uuid3)".gift_queue[0] run return 0

# Deliver each queued gift
$data modify storage evercraft:friends temp.deliver_queue set from storage evercraft:friends "u$(login_uuid3)".gift_queue
function evercraft:friends/gift/deliver_queued_loop

# Clear the queue
$data modify storage evercraft:friends "u$(login_uuid3)".gift_queue set value []
