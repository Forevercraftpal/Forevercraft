# Buddy Points — Check Tier
# @s = player
# Recalculates tier from points, fires promotion if changed

# Store old tier
scoreboard players operation #bd_old_tier ec.temp = @s ec.bd_tier

# Calculate new tier from points
scoreboard players set @s ec.bd_tier 0
execute if score @s ec.bd_points >= #bd_t1 ec.var run scoreboard players set @s ec.bd_tier 1
execute if score @s ec.bd_points >= #bd_t2 ec.var run scoreboard players set @s ec.bd_tier 2
execute if score @s ec.bd_points >= #bd_t3 ec.var run scoreboard players set @s ec.bd_tier 3
execute if score @s ec.bd_points >= #bd_t4 ec.var run scoreboard players set @s ec.bd_tier 4
execute if score @s ec.bd_points >= #bd_t5 ec.var run scoreboard players set @s ec.bd_tier 5
execute if score @s ec.bd_points >= #bd_t6 ec.var run scoreboard players set @s ec.bd_tier 6

# If tier changed upward, fire promotion
execute unless score @s ec.bd_tier = #bd_old_tier ec.temp if score @s ec.bd_tier > #bd_old_tier ec.temp run function evercraft:buddy/points/promote
