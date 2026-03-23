# Snapshot all 9 log types combined
execute store result score @s ec.tq_snap run scoreboard players get @s ec.tq_log_oak
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_log_spruce
scoreboard players operation @s ec.tq_snap += #tq_tmp ec.var
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_log_birch
scoreboard players operation @s ec.tq_snap += #tq_tmp ec.var
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_log_jungle
scoreboard players operation @s ec.tq_snap += #tq_tmp ec.var
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_log_acacia
scoreboard players operation @s ec.tq_snap += #tq_tmp ec.var
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_log_dark
scoreboard players operation @s ec.tq_snap += #tq_tmp ec.var
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_log_cherry
scoreboard players operation @s ec.tq_snap += #tq_tmp ec.var
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_log_mang
scoreboard players operation @s ec.tq_snap += #tq_tmp ec.var
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_log_pale
scoreboard players operation @s ec.tq_snap += #tq_tmp ec.var
