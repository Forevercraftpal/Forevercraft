# Q65: Obsidian Farmer — be near obsidian (implying mining activity)
execute at @s if block ~ ~-1 ~ minecraft:obsidian run scoreboard players set @s ec.tq_progress 1
execute at @s if block ~ ~ ~ minecraft:obsidian run scoreboard players set @s ec.tq_progress 1
execute at @s if block ~1 ~ ~ minecraft:obsidian run scoreboard players set @s ec.tq_progress 1
execute at @s if block ~-1 ~ ~ minecraft:obsidian run scoreboard players set @s ec.tq_progress 1
execute at @s if block ~ ~ ~1 minecraft:obsidian run scoreboard players set @s ec.tq_progress 1
execute at @s if block ~ ~ ~-1 minecraft:obsidian run scoreboard players set @s ec.tq_progress 1
execute if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete
