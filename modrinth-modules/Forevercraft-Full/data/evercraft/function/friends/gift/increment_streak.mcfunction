# Friend Gift — Increment gifts_no_return on sender's entry for target
# Also reset gifts_no_return on target's entry for sender (they received a gift)
# Macro args: self_uuid3 (sender), gift_target_uuid3 (recipient)

# === Increment sender's streak ===
$data modify storage evercraft:friends temp.streak_list set from storage evercraft:friends "u$(self_uuid3)".friends
data modify storage evercraft:friends temp.streak_result set value []
$scoreboard players set #fr_streak_find ec.temp $(gift_target_uuid3)
scoreboard players set #fr_streak_mode ec.temp 1
function evercraft:friends/gift/streak_loop
$data modify storage evercraft:friends "u$(self_uuid3)".friends set from storage evercraft:friends temp.streak_result

# === Reset recipient's streak for sender ===
$data modify storage evercraft:friends temp.streak_list set from storage evercraft:friends "u$(gift_target_uuid3)".friends
data modify storage evercraft:friends temp.streak_result set value []
$scoreboard players set #fr_streak_find ec.temp $(self_uuid3)
scoreboard players set #fr_streak_mode ec.temp 0
function evercraft:friends/gift/streak_loop
$data modify storage evercraft:friends "u$(gift_target_uuid3)".friends set from storage evercraft:friends temp.streak_result
