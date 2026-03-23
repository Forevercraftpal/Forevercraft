# Read combined stone + deepslate count
execute store result score #sq_cur ec.var run scoreboard players get @s ec.sq_mine_stone
execute store result score #sq_temp ec.var run scoreboard players get @s ec.sq_mine_ds
scoreboard players operation #sq_cur ec.var += #sq_temp ec.var
