# Friend Title — Update title unlock on target's storage
# Macro args: self_uuid3 (setter), title_target_uuid3 (receiver), new_title, setter_cid, set_gametime
# Manages: "u<target>".titles_received[] and "u<target>".pending_title_notify

# === Revoke old title from this setter ===
# Ensure titles_received exists (for players created before this feature)
$execute unless data storage evercraft:friends "u$(title_target_uuid3)".titles_received run data modify storage evercraft:friends "u$(title_target_uuid3)".titles_received set value []
# Copy titles_received, rebuild without the entry from this setter
$data modify storage evercraft:friends temp.tr_list set from storage evercraft:friends "u$(title_target_uuid3)".titles_received
data modify storage evercraft:friends temp.tr_result set value []
$scoreboard players set #fr_tr_setter ec.temp $(self_uuid3)
function evercraft:friends/title/revoke_loop
$data modify storage evercraft:friends "u$(title_target_uuid3)".titles_received set from storage evercraft:friends temp.tr_result

# === Grant new title (if not "friend" — friend is default, no unlock needed) ===
$execute unless data storage evercraft:friends {temp:{new_title:"friend"}} run data modify storage evercraft:friends "u$(title_target_uuid3)".titles_received append value {title:"$(new_title)",from_uuid3:$(self_uuid3),granted_day:0}
# Set granted_day to current day
$execute unless data storage evercraft:friends {temp:{new_title:"friend"}} store result storage evercraft:friends "u$(title_target_uuid3)".titles_received[-1].granted_day int 1 run time query day

# === Set pending notification (overwrites any previous — resets the 1-min timer) ===
$data modify storage evercraft:friends "u$(title_target_uuid3)".pending_title_notify set value {title:"$(new_title)",from_uuid3:$(self_uuid3),from_cid:$(setter_cid),set_at:$(set_gametime)}
