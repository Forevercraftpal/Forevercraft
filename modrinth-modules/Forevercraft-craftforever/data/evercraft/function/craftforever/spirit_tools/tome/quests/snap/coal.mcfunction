# Snapshot coal_ore + deepslate_coal_ore combined
execute store result score @s ec.tq_snap run scoreboard players get @s ec.tq_mine_coal
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_mine_di_coal
scoreboard players operation @s ec.tq_snap += #tq_tmp ec.var
