# Q69: Mountain Logger — chop logs above Y=100
execute store result score #tq_y ec.var run data get entity @s Pos[1]
execute if score #tq_y ec.var matches 100.. run function evercraft:craftforever/spirit_tools/tome/quests/types/read/logs
execute if score #tq_y ec.var matches 100.. run scoreboard players operation #tq_cur ec.var -= @s ec.tq_snap
execute if score #tq_y ec.var matches 100.. if score #tq_cur ec.var matches 1.. run scoreboard players set @s ec.tq_progress 1
execute if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete
