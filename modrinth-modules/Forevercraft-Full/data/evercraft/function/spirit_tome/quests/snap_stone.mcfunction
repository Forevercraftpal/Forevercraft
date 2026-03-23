# Snapshot combined stone + deepslate mined count
execute store result score @s ec.sq_snap run scoreboard players get @s ec.sq_mine_stone
execute store result score #sq_temp ec.var run scoreboard players get @s ec.sq_mine_ds
scoreboard players operation @s ec.sq_snap += #sq_temp ec.var
