# Q29: Desert Digger — be in a desert biome (sand dig tracked by delta)
execute at @s if biome ~ ~ ~ minecraft:desert run scoreboard players set @s ec.tq_progress 1
execute at @s if biome ~ ~ ~ minecraft:badlands run scoreboard players set @s ec.tq_progress 1
execute if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete
