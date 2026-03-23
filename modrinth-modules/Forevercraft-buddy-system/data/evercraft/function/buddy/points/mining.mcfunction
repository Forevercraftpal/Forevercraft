# Buddy Points — Mining (+1 per deepslate ore mined with buddy nearby)
# @s = player, called from tick_player

# Only process if buddy is nearby
execute unless entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,limit=1] run return fail

# Calculate ore delta since last check (uses adv.stat_ore which tracks all ores)
scoreboard players operation #bd_ore_delta ec.temp = @s adv.stat_ore
scoreboard players operation #bd_ore_delta ec.temp -= @s ec.bd_ore_prev

# Update snapshot
scoreboard players operation @s ec.bd_ore_prev = @s adv.stat_ore

# Award points for each ore mined (skip if 0 or negative)
execute unless score #bd_ore_delta ec.temp matches 1.. run return fail
scoreboard players operation #bd_pts_add ec.temp = #bd_ore_delta ec.temp
function evercraft:buddy/points/add_points
