# Snapshot crops combined (carrot + potato + beetroot)
execute store result score @s ec.tq_snap run scoreboard players get @s ec.tq_pick_carrot
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_pick_potato
scoreboard players operation @s ec.tq_snap += #tq_tmp ec.var
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_pick_beet
scoreboard players operation @s ec.tq_snap += #tq_tmp ec.var
