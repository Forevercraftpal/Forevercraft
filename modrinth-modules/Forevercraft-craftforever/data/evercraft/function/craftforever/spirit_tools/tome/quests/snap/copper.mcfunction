# Snapshot copper_ore + deepslate_copper_ore combined
execute store result score @s ec.tq_snap run scoreboard players get @s ec.tq_mine_cop
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_mine_di_cop
scoreboard players operation @s ec.tq_snap += #tq_tmp ec.var
