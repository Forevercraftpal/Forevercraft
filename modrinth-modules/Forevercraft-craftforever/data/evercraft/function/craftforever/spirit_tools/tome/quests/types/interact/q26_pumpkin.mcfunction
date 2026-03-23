# Q26: Pumpkin Patch — be near a pumpkin block (harvested or placed)
execute at @s if block ~ ~-1 ~ minecraft:pumpkin run scoreboard players set @s ec.tq_progress 1
execute at @s if block ~ ~ ~ minecraft:pumpkin run scoreboard players set @s ec.tq_progress 1
execute at @s if block ~1 ~ ~ minecraft:pumpkin run scoreboard players set @s ec.tq_progress 1
execute at @s if block ~-1 ~ ~ minecraft:pumpkin run scoreboard players set @s ec.tq_progress 1
execute at @s if block ~ ~ ~1 minecraft:pumpkin run scoreboard players set @s ec.tq_progress 1
execute at @s if block ~ ~ ~-1 minecraft:pumpkin run scoreboard players set @s ec.tq_progress 1
execute if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete
