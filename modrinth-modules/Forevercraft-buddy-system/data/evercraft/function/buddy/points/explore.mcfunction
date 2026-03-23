# Buddy Points — Explore Structure (+15 for new structure type with buddy nearby)
# @s = player who entered a new structure type
# Called from hook in structure discovery system

# Only if player has a buddy
execute unless score @s ec.bd_tier matches 0.. run return fail

# Only if buddy is within 16 blocks
# Set #Search for ownership check (explore is called from outside tick_player)
scoreboard players operation #Search companion.id = @s companion.id
execute at @s unless entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,predicate=evercraft:buddy/check_owner,limit=1] run return fail

scoreboard players set #bd_pts_add ec.temp 15
function evercraft:buddy/points/add_points
