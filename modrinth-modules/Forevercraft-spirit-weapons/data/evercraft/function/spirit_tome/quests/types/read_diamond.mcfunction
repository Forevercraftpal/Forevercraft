# Read combined diamond ore + deepslate diamond ore count
execute store result score #sq_cur ec.var run scoreboard players get @s ec.sq_mine_diamond
execute store result score #sq_temp ec.var run scoreboard players get @s ec.sq_mine_di_dia
scoreboard players operation #sq_cur ec.var += #sq_temp ec.var
