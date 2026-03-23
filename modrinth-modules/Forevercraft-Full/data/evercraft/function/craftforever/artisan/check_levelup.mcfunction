# Artisan Rank — Check for level up
# Recursively levels up while XP exceeds threshold

# Cap at rank 100
execute if score @s ec.cf_rank matches 100.. run return 0

# If XP < threshold, done
execute unless score @s ec.cf_xp >= @s ec.cf_xp_next run return 0

# Subtract threshold from current XP
scoreboard players operation @s ec.cf_xp -= @s ec.cf_xp_next

# Increment rank
scoreboard players add @s ec.cf_rank 1

# Calculate next threshold from lookup table
function evercraft:craftforever/artisan/calc_next_threshold

# Level up effects
function evercraft:craftforever/artisan/level_up

# Recurse (in case of multi-level-up from large XP gains)
function evercraft:craftforever/artisan/check_levelup
