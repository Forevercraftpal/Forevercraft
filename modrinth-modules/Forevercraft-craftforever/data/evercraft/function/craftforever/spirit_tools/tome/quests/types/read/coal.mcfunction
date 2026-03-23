# Read coal_ore + deepslate_coal_ore combined into #tq_cur
execute store result score #tq_cur ec.var run scoreboard players get @s ec.tq_mine_coal
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_mine_di_coal
scoreboard players operation #tq_cur ec.var += #tq_tmp ec.var
