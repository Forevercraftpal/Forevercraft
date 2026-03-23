# Buddy Points — Fishing (+1 per fish caught with buddy nearby)
# @s = player, called from tick_player

# Only process if buddy is nearby
execute unless entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,predicate=evercraft:buddy/check_owner,limit=1] run return fail

# Calculate fish delta since last check
scoreboard players operation #bd_fish_delta ec.temp = @s adv.fish_ct
scoreboard players operation #bd_fish_delta ec.temp -= @s ec.bd_fish_prev

# Update snapshot
scoreboard players operation @s ec.bd_fish_prev = @s adv.fish_ct

# Award points for each fish caught (skip if 0 or negative)
execute unless score #bd_fish_delta ec.temp matches 1.. run return fail
scoreboard players operation #bd_pts_add ec.temp = #bd_fish_delta ec.temp
function evercraft:buddy/points/add_points
