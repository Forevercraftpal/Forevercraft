# Friend Gift — Loop: deliver each queued gift to @s

execute unless data storage evercraft:friends temp.deliver_queue[0] run return 0

# Read tier from queue entry (default to common if missing/corrupt)
execute store result score #fr_gift_tier ec.temp run data get storage evercraft:friends temp.deliver_queue[0].tier
execute unless score #fr_gift_tier ec.temp matches 1..6 run scoreboard players set #fr_gift_tier ec.temp 1

# Copy sender cid for notification
execute store result storage evercraft:friends temp.sender_cid int 1 run data get storage evercraft:friends temp.deliver_queue[0].from_cid

# Give crate
execute if score #fr_gift_tier ec.temp matches 1 run loot give @s loot evercraft:achievements/crates/common
execute if score #fr_gift_tier ec.temp matches 2 run loot give @s loot evercraft:achievements/crates/uncommon
execute if score #fr_gift_tier ec.temp matches 3 run loot give @s loot evercraft:achievements/crates/rare
execute if score #fr_gift_tier ec.temp matches 4 run loot give @s loot evercraft:achievements/crates/ornate
execute if score #fr_gift_tier ec.temp matches 5 run loot give @s loot evercraft:achievements/crates/exquisite
execute if score #fr_gift_tier ec.temp matches 6 run loot give @s loot evercraft:achievements/crates/mythical

# Get tier name and notify
function evercraft:friends/gift/get_tier_name
function evercraft:friends/gift/notify_recipient with storage evercraft:friends temp

# Grant heart to receiver for sender friend (from_uuid3 in queue entry)
# Only process if from_uuid3 exists (backwards compat with old queue entries)
execute if data storage evercraft:friends temp.deliver_queue[0].from_uuid3 store result storage evercraft:friends temp.gift_sender_uuid3 int 1 run data get storage evercraft:friends temp.deliver_queue[0].from_uuid3
execute if data storage evercraft:friends temp.deliver_queue[0].from_uuid3 run function evercraft:friends/gift/grant_receiver_heart

# Pop and recurse
data remove storage evercraft:friends temp.deliver_queue[0]
function evercraft:friends/gift/deliver_queued_loop
