# Friend System — Macro: evaluate gift streaks for one player's friend list
# Called from daily_reset_do after daily_heart/sent_gift_today flags are cleared
# Macro args: reset_uuid3 (this player's UUID3)
# Reads the ORIGINAL friend list (before flag clearing) from temp.streak_src_list
# Writes updated streaks back to storage

data modify storage evercraft:friends temp.ds_list set from storage evercraft:friends temp.streak_src_list
data modify storage evercraft:friends temp.ds_result set value []
$scoreboard players set #fr_ds_self_uuid3 ec.temp $(reset_uuid3)
$data modify storage evercraft:friends temp.ds_self_uuid3 set value $(reset_uuid3)
function evercraft:friends/daily_reset_streak_loop
$data modify storage evercraft:friends "u$(reset_uuid3)".friends set from storage evercraft:friends temp.ds_result
