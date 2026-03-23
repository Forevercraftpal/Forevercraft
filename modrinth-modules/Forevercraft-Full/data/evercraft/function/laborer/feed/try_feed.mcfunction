# Try to feed a laborer with the held meal
# Runs as: player holding an ec_meal item. @e[tag=ec.lb_target] = target laborer

# Determine meal tier and set food_tier score on laborer
# meal_tier in custom_data: "hearty", "gourmet", "feast"
scoreboard players set #lb_food_tier ec.lb_temp 0
execute if data entity @s SelectedItem.components."minecraft:custom_data"{meal_tier:"hearty"} run scoreboard players set #lb_food_tier ec.lb_temp 1
execute if data entity @s SelectedItem.components."minecraft:custom_data"{meal_tier:"gourmet"} run scoreboard players set #lb_food_tier ec.lb_temp 2
execute if data entity @s SelectedItem.components."minecraft:custom_data"{meal_tier:"feast"} run scoreboard players set #lb_food_tier ec.lb_temp 3
execute if data entity @s SelectedItem.components."minecraft:custom_data"{meal_tier:"artisan"} run scoreboard players set #lb_food_tier ec.lb_temp 4

# Duration by tier (gametime ticks):
# hearty = 72000 (1 hour), gourmet = 144000 (2 hours), feast = 288000 (4 hours), artisan = 432000 (6 hours)
scoreboard players set #lb_feed_dur ec.lb_temp 0
execute if score #lb_food_tier ec.lb_temp matches 1 run scoreboard players set #lb_feed_dur ec.lb_temp 72000
execute if score #lb_food_tier ec.lb_temp matches 2 run scoreboard players set #lb_feed_dur ec.lb_temp 144000
execute if score #lb_food_tier ec.lb_temp matches 3 run scoreboard players set #lb_feed_dur ec.lb_temp 288000
execute if score #lb_food_tier ec.lb_temp matches 4 run scoreboard players set #lb_feed_dur ec.lb_temp 432000

# If tier is 0 (unknown meal), still treat as basic food
execute if score #lb_food_tier ec.lb_temp matches 0 run scoreboard players set #lb_food_tier ec.lb_temp 1
execute if score #lb_feed_dur ec.lb_temp matches 0 run scoreboard players set #lb_feed_dur ec.lb_temp 72000

# Set fed_until = now + duration
execute store result score #lb_fed_until ec.lb_temp run time query gametime
scoreboard players operation #lb_fed_until ec.lb_temp += #lb_feed_dur ec.lb_temp

# Apply to laborer entity
execute as @e[tag=ec.lb_target,limit=1] run scoreboard players operation @s ec.lb_fed = #lb_fed_until ec.lb_temp
execute as @e[tag=ec.lb_target,limit=1] run scoreboard players operation @s ec.lb_food_tier = #lb_food_tier ec.lb_temp

# Detect meal category on player's item BEFORE switching context
# (All checks run as @s = player, so SelectedItem is accessible)
# Encode meal_cat as a temp score: 0=none, 1=mining, 2=fortune, 3=wayfarer, 4=combat, 5=delicacy
scoreboard players set #lb_meal_cat ec.lb_temp 0
execute if data entity @s SelectedItem.components."minecraft:custom_data"{meal_cat:"mining"} run scoreboard players set #lb_meal_cat ec.lb_temp 1
execute if data entity @s SelectedItem.components."minecraft:custom_data"{meal_cat:"fortune"} run scoreboard players set #lb_meal_cat ec.lb_temp 2
execute if data entity @s SelectedItem.components."minecraft:custom_data"{meal_cat:"wayfarer"} run scoreboard players set #lb_meal_cat ec.lb_temp 3
execute if data entity @s SelectedItem.components."minecraft:custom_data"{meal_cat:"combat"} run scoreboard players set #lb_meal_cat ec.lb_temp 4
execute if data entity @s SelectedItem.components."minecraft:custom_data"{meal_cat:"delicacy"} run scoreboard players set #lb_meal_cat ec.lb_temp 5

# Check category match bonus (comparing laborer type vs meal category, both as scores now)
scoreboard players set #lb_cat_match ec.lb_temp 0
# Miner (type 1) matches mining (cat 1)
execute as @e[tag=ec.lb_target,limit=1] if score @s ec.lb_type matches 1 if score #lb_meal_cat ec.lb_temp matches 1 run scoreboard players set #lb_cat_match ec.lb_temp 1
# Farmer (type 2) matches fortune (cat 2)
execute as @e[tag=ec.lb_target,limit=1] if score @s ec.lb_type matches 2 if score #lb_meal_cat ec.lb_temp matches 2 run scoreboard players set #lb_cat_match ec.lb_temp 1
# Fisher (type 3) matches wayfarer (cat 3)
execute as @e[tag=ec.lb_target,limit=1] if score @s ec.lb_type matches 3 if score #lb_meal_cat ec.lb_temp matches 3 run scoreboard players set #lb_cat_match ec.lb_temp 1
# Woodcutter (type 4) matches combat (cat 4)
execute as @e[tag=ec.lb_target,limit=1] if score @s ec.lb_type matches 4 if score #lb_meal_cat ec.lb_temp matches 4 run scoreboard players set #lb_cat_match ec.lb_temp 1
# Forager (type 5) matches delicacy (cat 5)
execute as @e[tag=ec.lb_target,limit=1] if score @s ec.lb_type matches 5 if score #lb_meal_cat ec.lb_temp matches 5 run scoreboard players set #lb_cat_match ec.lb_temp 1
# Prospector (type 6) matches any feast-tier meal
execute as @e[tag=ec.lb_target,limit=1] if score @s ec.lb_type matches 6 if score #lb_food_tier ec.lb_temp matches 3 run scoreboard players set #lb_cat_match ec.lb_temp 1
# Laborer Rations match ALL laborer types (universal category match)
execute if data entity @s SelectedItem.components."minecraft:custom_data"{laborer_ration:true} run scoreboard players set #lb_cat_match ec.lb_temp 1

# Apply category match
execute as @e[tag=ec.lb_target,limit=1] run scoreboard players operation @s ec.lb_food_cat = #lb_cat_match ec.lb_temp

# Consume 1 meal from player's hand
item modify entity @s weapon.mainhand evercraft:laborer/consume_one

# Feedback
playsound minecraft:entity.generic.eat master @s ~ ~ ~ 1 1
execute at @e[tag=ec.lb_target,limit=1] run particle minecraft:heart ~ ~2 ~ 0.3 0.2 0.3 0 5
tellraw @s [{"text":"[Laborer] ","color":"gold"},{"text":"Fed! ","color":"green"},{"text":"(","color":"gray"},{"text":"Tier ","color":"gray"},{"score":{"name":"#lb_food_tier","objective":"ec.lb_temp"},"color":"yellow"},{"text":")","color":"gray"}]
execute if score #lb_cat_match ec.lb_temp matches 1 run tellraw @s [{"text":"[Laborer] ","color":"gold"},{"text":"Category match bonus! +1 expedition quality","color":"aqua"}]
