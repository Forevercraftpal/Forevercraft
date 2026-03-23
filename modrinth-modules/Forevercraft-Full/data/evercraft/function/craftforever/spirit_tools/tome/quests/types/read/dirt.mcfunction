# Read dirt + grass_block combined into #tq_cur
execute store result score #tq_cur ec.var run scoreboard players get @s ec.tq_mine_dirt
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_mine_grass
scoreboard players operation #tq_cur ec.var += #tq_tmp ec.var
