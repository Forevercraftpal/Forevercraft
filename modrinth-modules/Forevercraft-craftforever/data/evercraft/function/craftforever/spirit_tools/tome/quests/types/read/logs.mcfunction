# Read all 9 log types combined into #tq_cur
execute store result score #tq_cur ec.var run scoreboard players get @s ec.tq_log_oak
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_log_spruce
scoreboard players operation #tq_cur ec.var += #tq_tmp ec.var
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_log_birch
scoreboard players operation #tq_cur ec.var += #tq_tmp ec.var
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_log_jungle
scoreboard players operation #tq_cur ec.var += #tq_tmp ec.var
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_log_acacia
scoreboard players operation #tq_cur ec.var += #tq_tmp ec.var
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_log_dark
scoreboard players operation #tq_cur ec.var += #tq_tmp ec.var
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_log_cherry
scoreboard players operation #tq_cur ec.var += #tq_tmp ec.var
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_log_mang
scoreboard players operation #tq_cur ec.var += #tq_tmp ec.var
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_log_pale
scoreboard players operation #tq_cur ec.var += #tq_tmp ec.var
