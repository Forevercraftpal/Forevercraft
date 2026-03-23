# Q93: All-Rounder — mine 100 of 5 different ore types
# Count how many ore types have 100+ mined (using lifetime ach stats as proxy)
scoreboard players set @s ec.tq_progress 0
execute if score @s ec.tq_mine_iron matches 100.. run scoreboard players add @s ec.tq_progress 1
execute if score @s ec.tq_mine_dia matches 100.. run scoreboard players add @s ec.tq_progress 1
execute if score @s ec.tq_mine_coal matches 100.. run scoreboard players add @s ec.tq_progress 1
execute if score @s ec.tq_mine_cop matches 100.. run scoreboard players add @s ec.tq_progress 1
execute if score @s ec.tq_mine_red matches 100.. run scoreboard players add @s ec.tq_progress 1
execute if score @s ec.tq_mine_lapis matches 100.. run scoreboard players add @s ec.tq_progress 1
execute if score @s ec.tq_mine_emer matches 100.. run scoreboard players add @s ec.tq_progress 1
execute if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete
