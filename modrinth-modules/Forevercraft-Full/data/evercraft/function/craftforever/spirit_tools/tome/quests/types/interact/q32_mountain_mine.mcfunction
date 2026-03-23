# Q32: Mountain Miner — be above Y=100 and have mined blocks
# Store player Y position, check if >= 100
execute store result score #tq_y ec.var run data get entity @s Pos[1]
execute if score #tq_y ec.var matches 100.. store result score #tq_tmp ec.var run scoreboard players get @s ach.blocks_mined
execute if score #tq_y ec.var matches 100.. run scoreboard players operation #tq_tmp ec.var -= @s ec.tq_snap
execute if score #tq_y ec.var matches 100.. if score #tq_tmp ec.var matches 1.. run scoreboard players set @s ec.tq_progress 1
execute if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete
