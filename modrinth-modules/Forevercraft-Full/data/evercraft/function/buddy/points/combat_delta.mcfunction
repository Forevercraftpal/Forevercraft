# Buddy Points — Combat Delta (+1 per mob kill with buddy nearby)
# @s = player, called from tick_player

# Only process if buddy is nearby
execute unless entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,predicate=evercraft:buddy/check_owner,limit=1] run return fail

# Calculate kill delta since last check (uses adv.mob_kills vanilla stat)
scoreboard players operation #bd_kill_delta ec.temp = @s adv.mob_kills
scoreboard players operation #bd_kill_delta ec.temp -= @s ec.bd_kills_prev

# Update snapshot
scoreboard players operation @s ec.bd_kills_prev = @s adv.mob_kills

# Award points for each kill (skip if 0 or negative)
execute unless score #bd_kill_delta ec.temp matches 1.. run return fail
scoreboard players operation #bd_pts_add ec.temp = #bd_kill_delta ec.temp
function evercraft:buddy/points/add_points
