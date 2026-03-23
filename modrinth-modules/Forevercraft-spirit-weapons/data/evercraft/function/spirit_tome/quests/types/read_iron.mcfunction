# Read combined iron ore + deepslate iron ore count
execute store result score #sq_cur ec.var run scoreboard players get @s ec.sq_mine_iron
execute store result score #sq_temp ec.var run scoreboard players get @s ec.sq_mine_di_iron
scoreboard players operation #sq_cur ec.var += #sq_temp ec.var
