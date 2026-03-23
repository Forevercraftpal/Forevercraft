# Read diamond_ore + deepslate_diamond_ore combined into #tq_cur
execute store result score #tq_cur ec.var run scoreboard players get @s ec.tq_mine_dia
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_mine_di_dia
scoreboard players operation #tq_cur ec.var += #tq_tmp ec.var
