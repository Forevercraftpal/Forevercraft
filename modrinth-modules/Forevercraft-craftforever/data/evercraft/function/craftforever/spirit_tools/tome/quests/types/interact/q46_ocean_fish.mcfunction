# Q46: Ocean Fisher — fish while standing in water
execute at @s if block ~ ~ ~ minecraft:water store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_fish
execute at @s if block ~ ~ ~ minecraft:water run scoreboard players operation #tq_tmp ec.var -= @s ec.tq_snap
execute at @s if block ~ ~ ~ minecraft:water if score #tq_tmp ec.var matches 1.. run scoreboard players set @s ec.tq_progress 1
execute if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete
