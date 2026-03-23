# Snapshot dirt + grass_block combined
execute store result score @s ec.tq_snap run scoreboard players get @s ec.tq_mine_dirt
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_mine_grass
scoreboard players operation @s ec.tq_snap += #tq_tmp ec.var
