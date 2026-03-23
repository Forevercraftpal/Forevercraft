# Check if player has cooked at least 1 meal since quest activation
# Uses delta from snapshot
execute store result score #sq_cur ec.var run scoreboard players get @s ach.meals_cooked
scoreboard players operation #sq_cur ec.var -= @s ec.sq_snap
execute if score #sq_cur ec.var matches 1.. run function evercraft:spirit_tome/complete
