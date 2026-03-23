# Read stone + deepslate combined into #tq_cur
execute store result score #tq_cur ec.var run scoreboard players get @s ec.tq_mine_stone
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_mine_ds
scoreboard players operation #tq_cur ec.var += #tq_tmp ec.var
