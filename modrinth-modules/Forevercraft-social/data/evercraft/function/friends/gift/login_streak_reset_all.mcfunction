# Friend Gift — Macro: reset all gift streaks and daily flags for a player who missed 2+ days
# Macro args: catchup_uuid3
# Iterates friend list, resets gift_streak to 0, clears sent_gift_today and daily_heart

$data modify storage evercraft:friends temp.rsa_list set from storage evercraft:friends "u$(catchup_uuid3)".friends
data modify storage evercraft:friends temp.rsa_result set value []
function evercraft:friends/gift/login_streak_reset_all_loop
$data modify storage evercraft:friends "u$(catchup_uuid3)".friends set from storage evercraft:friends temp.rsa_result
