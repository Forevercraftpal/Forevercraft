# Buddy Points — Structure Explore Delta (+15 per new structure with buddy nearby)
# @s = player, called from tick_player

# Only process if buddy is nearby
execute unless entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,predicate=evercraft:buddy/check_owner,limit=1] run return fail

# Calculate structure delta since last check
scoreboard players operation #bd_struct_delta ec.temp = @s adv.stat_struct
scoreboard players operation #bd_struct_delta ec.temp -= @s ec.bd_struct_prev

# Update snapshot
scoreboard players operation @s ec.bd_struct_prev = @s adv.stat_struct

# Award +15 points per new structure (skip if 0 or negative)
execute unless score #bd_struct_delta ec.temp matches 1.. run return fail
scoreboard players set #bd_pts_add ec.temp 15
scoreboard players operation #bd_pts_add ec.temp *= #bd_struct_delta ec.temp
function evercraft:buddy/points/add_points
