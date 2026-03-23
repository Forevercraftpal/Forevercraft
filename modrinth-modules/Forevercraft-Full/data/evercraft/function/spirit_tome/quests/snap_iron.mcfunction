# Snapshot combined iron ore + deepslate iron ore mined count
execute store result score @s ec.sq_snap run scoreboard players get @s ec.sq_mine_iron
execute store result score #sq_temp ec.var run scoreboard players get @s ec.sq_mine_di_iron
scoreboard players operation @s ec.sq_snap += #sq_temp ec.var
