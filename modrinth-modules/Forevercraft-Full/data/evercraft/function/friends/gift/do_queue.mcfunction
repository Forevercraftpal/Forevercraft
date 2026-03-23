# Friend Gift — Macro: append gift to offline recipient's queue
# Macro args: gift_target_uuid3, sender_cid, gift_tier, self_uuid3

# Ensure recipient storage exists
$execute unless data storage evercraft:friends "u$(gift_target_uuid3)" run data modify storage evercraft:friends "u$(gift_target_uuid3)" set value {friends:[],married_to:0,friend_count:0,gift_queue:[],last_daily_day:0}

# Append gift to queue
$data modify storage evercraft:friends "u$(gift_target_uuid3)".gift_queue append value {from_cid:$(sender_cid),tier:$(gift_tier),from_uuid3:$(self_uuid3)}
