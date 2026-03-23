# Buddy Points — Combat (+1 per mob kill with buddy nearby)
# @s = player who killed a mob
# Called from hook in existing kill tracking

# Only if player has a buddy
execute unless score @s ec.bd_tier matches 0.. run return fail

# Only if buddy is within 16 blocks
execute at @s unless entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,limit=1] run return fail

scoreboard players set #bd_pts_add ec.temp 1
function evercraft:buddy/points/add_points
