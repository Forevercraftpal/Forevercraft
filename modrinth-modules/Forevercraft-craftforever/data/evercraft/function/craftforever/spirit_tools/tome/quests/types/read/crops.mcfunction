# Read crops combined (carrot + potato + beetroot) into #tq_cur
execute store result score #tq_cur ec.var run scoreboard players get @s ec.tq_pick_carrot
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_pick_potato
scoreboard players operation #tq_cur ec.var += #tq_tmp ec.var
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_pick_beet
scoreboard players operation #tq_cur ec.var += #tq_tmp ec.var
