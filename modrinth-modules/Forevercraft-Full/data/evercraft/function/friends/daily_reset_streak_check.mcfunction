# Friend System — Macro: check if partner sent a gift to us today
# Macro args: ds_friend_uuid3 (partner's UUID3), ds_self_uuid3 (our UUID3)
# Output: #fr_ds_partner_sent ec.temp = 1 if partner sent gift, 0 otherwise

$execute unless data storage evercraft:friends "u$(ds_friend_uuid3)" run return 0
$data modify storage evercraft:friends temp.ds_partner_list set from storage evercraft:friends "u$(ds_friend_uuid3)".friends
$scoreboard players set #fr_ds_find_uuid3 ec.temp $(ds_self_uuid3)
function evercraft:friends/daily_reset_streak_partner_loop
