# Friend Title — Macro: check pending notification for player
# Macro args: notify_uuid3

# Check if pending notification exists
$execute unless data storage evercraft:friends "u$(notify_uuid3)".pending_title_notify run return 0

# Read the set_at gametime
$execute store result score #fr_notify_set_at ec.temp run data get storage evercraft:friends "u$(notify_uuid3)".pending_title_notify.set_at

# Check if 1200 ticks (60 seconds) have passed
execute store result score #fr_notify_now ec.temp run time query gametime
scoreboard players operation #fr_notify_now ec.temp -= #fr_notify_set_at ec.temp
execute unless score #fr_notify_now ec.temp matches 1200.. run return 0

# 60 seconds have passed — deliver notification
$data modify storage evercraft:friends temp.pending set from storage evercraft:friends "u$(notify_uuid3)".pending_title_notify
function evercraft:friends/title/deliver_notify with storage evercraft:friends temp.pending

# Clear the pending notification
$data remove storage evercraft:friends "u$(notify_uuid3)".pending_title_notify
