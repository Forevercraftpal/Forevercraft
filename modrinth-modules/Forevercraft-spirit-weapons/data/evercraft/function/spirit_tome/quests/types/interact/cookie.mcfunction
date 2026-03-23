# Cookie Monster — check if player has eaten food since activation
# Simple: check food_eaten delta >= 1 (any food counts as "eating a cookie" — simplified)
execute store result score #sq_cur ec.var run scoreboard players get @s ach.food_eaten
scoreboard players operation #sq_cur ec.var -= @s ec.sq_snap
execute if score #sq_cur ec.var matches 1.. run function evercraft:spirit_tome/complete
