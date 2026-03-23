# Snapshot combined diamond ore + deepslate diamond ore mined count
execute store result score @s ec.sq_snap run scoreboard players get @s ec.sq_mine_diamond
execute store result score #sq_temp ec.var run scoreboard players get @s ec.sq_mine_di_dia
scoreboard players operation @s ec.sq_snap += #sq_temp ec.var
