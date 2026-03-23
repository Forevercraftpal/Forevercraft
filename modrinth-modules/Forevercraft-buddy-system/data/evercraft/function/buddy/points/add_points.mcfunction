# Buddy Points — Add Points (central function)
# @s = player
# #bd_pts_add ec.temp = points to add (set by caller)
# Applies best buddy 2x multiplier, saves, checks tier

# Best buddy gets double points
execute if score @s ec.bd_best_type matches 1.. if score @s ec.bd_type_id = @s ec.bd_best_type run scoreboard players operation #bd_pts_add ec.temp *= #2 adv.temp

# Add points (cap at 10000)
scoreboard players operation @s ec.bd_points += #bd_pts_add ec.temp
execute if score @s ec.bd_points matches 10001.. run scoreboard players set @s ec.bd_points 10000

# Check for tier promotion
function evercraft:buddy/points/check_tier
