# Night Fisher — catch a fish at night
# Check: it's night AND fish_caught has increased since activation
execute store result score #sq_time ec.var run time query daytime
execute unless score #sq_time ec.var matches 13000..23000 run return 0

execute store result score #sq_cur ec.var run scoreboard players get @s ec.sq_fish
scoreboard players operation #sq_cur ec.var -= @s ec.sq_snap
execute if score #sq_cur ec.var matches 1.. run function evercraft:spirit_tome/complete
