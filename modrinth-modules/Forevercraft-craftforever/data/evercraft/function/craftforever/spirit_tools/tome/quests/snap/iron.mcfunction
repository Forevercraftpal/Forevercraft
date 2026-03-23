# Snapshot iron_ore + deepslate_iron_ore combined
execute store result score @s ec.tq_snap run scoreboard players get @s ec.tq_mine_iron
execute store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_mine_di_iron
scoreboard players operation @s ec.tq_snap += #tq_tmp ec.var
