# Buddy Points — Walking (+7 per 1000 blocks walked together)
# @s = player, buddy is within 16 blocks

# Calculate walk delta since last check
scoreboard players operation #bd_walk_delta ec.temp = @s adv.walk_cm
scoreboard players operation #bd_walk_delta ec.temp -= @s ec.bd_walk_prev

# Update previous snapshot
scoreboard players operation @s ec.bd_walk_prev = @s adv.walk_cm

# Accumulate delta (in centimeters)
scoreboard players operation @s ec.bd_walk_accum += #bd_walk_delta ec.temp

# Check if accumulated 1000 blocks (100000 cm)
execute unless score @s ec.bd_walk_accum matches 100000.. run return fail

# Award +7 points
scoreboard players set #bd_pts_add ec.temp 7
function evercraft:buddy/points/add_points

# Subtract 100000 from accumulator (keep remainder)
scoreboard players remove @s ec.bd_walk_accum 100000
