# Snapshot stone + deepslate combined
execute store result score @s ec.tq_snap run scoreboard players get @s ec.tq_mine_stone
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_mine_ds
scoreboard players operation @s ec.tq_snap += #tq_tmp ec.var
