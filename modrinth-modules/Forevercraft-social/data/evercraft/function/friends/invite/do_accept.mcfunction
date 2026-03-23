# Friend Invite — Macro: perform storage operations for accept
# Macro args: accepter_uuid3, sender_uuid3, accepter_cid, sender_cid

# Initialize both player storages if needed
$execute unless data storage evercraft:friends "u$(accepter_uuid3)" run data modify storage evercraft:friends "u$(accepter_uuid3)" set value {friends:[],married_to:0,friend_count:0,gift_queue:[],last_daily_day:0}
$execute unless data storage evercraft:friends "u$(sender_uuid3)" run data modify storage evercraft:friends "u$(sender_uuid3)" set value {friends:[],married_to:0,friend_count:0,gift_queue:[],last_daily_day:0}

# Add sender to accepter's friend list (cid = companion.id for selector-based name display)
$data modify storage evercraft:friends "u$(accepter_uuid3)".friends append value {uuid3:$(sender_uuid3),cid:$(sender_cid),hearts:0,title:"friend",daily_heart:0b,gifts_no_return:0,gift_streak:0,sent_gift_today:0b}

# Add accepter to sender's friend list
$data modify storage evercraft:friends "u$(sender_uuid3)".friends append value {uuid3:$(accepter_uuid3),cid:$(accepter_cid),hearts:0,title:"friend",daily_heart:0b,gifts_no_return:0,gift_streak:0,sent_gift_today:0b}

# Realm milestone: friendship formed
function evercraft:milestones/increment/friend_made
