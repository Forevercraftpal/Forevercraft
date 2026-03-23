# Calculate expedition quality for this laborer
# quality = base_tier + comfort_bonus + food_bonus + food_match + rank_bonus + perm_bonus
# Runs as: laborer entity. Owner tagged ec.lb_owner by tick_single.

# Base tier by laborer type (prospector=4, all others=2)
scoreboard players set @s ec.lb_quality 2
execute if score @s ec.lb_type matches 6 run scoreboard players set @s ec.lb_quality 4

# Comfort bonus: owner's hs.decor / 1000, capped at 5
scoreboard players set #lb_comfort ec.lb_temp 0
execute as @a[tag=ec.lb_owner,limit=1] store result score #lb_comfort ec.lb_temp run scoreboard players get @s hs.decor
scoreboard players operation #lb_comfort ec.lb_temp /= #lb_1000 ec.lb_temp
execute if score #lb_comfort ec.lb_temp matches 6.. run scoreboard players set #lb_comfort ec.lb_temp 5
scoreboard players operation @s ec.lb_quality += #lb_comfort ec.lb_temp

# Food bonus (from meal tier: 0=unfed, 1=hearty, 2=gourmet, 3=feast)
scoreboard players operation @s ec.lb_quality += @s ec.lb_food_tier

# Food category match bonus
scoreboard players operation @s ec.lb_quality += @s ec.lb_food_cat

# Rank bonus: owner's ec.cf_rank / 25, capped at 4
scoreboard players set #lb_rank ec.lb_temp 0
execute as @a[tag=ec.lb_owner,limit=1] store result score #lb_rank ec.lb_temp run scoreboard players get @s ec.cf_rank
scoreboard players operation #lb_rank ec.lb_temp /= #lb_25 ec.lb_temp
execute if score #lb_rank ec.lb_temp matches 5.. run scoreboard players set #lb_rank ec.lb_temp 4
scoreboard players operation @s ec.lb_quality += #lb_rank ec.lb_temp

# Permanent bonus (from adventures)
scoreboard players operation @s ec.lb_quality += @s ec.lb_perm_bonus
