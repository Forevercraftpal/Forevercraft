# Buddy Points — Feeding (+5 per treat, capped 3/day)
# @s = player who just fed a treat
# Called from hook in companions/handler/menu_v2/do_treat.mcfunction

# Only if player has a buddy
execute unless score @s ec.bd_tier matches 0.. run return fail

# Check daily cap (3 feeds per day)
execute if score @s ec.bd_feed_today matches 3.. run return fail

# Increment daily counter
scoreboard players add @s ec.bd_feed_today 1

# Award +5 points
scoreboard players set #bd_pts_add ec.temp 5
function evercraft:buddy/points/add_points
