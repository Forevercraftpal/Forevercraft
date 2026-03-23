# Q60: Snow Digger — be in a snowy biome
execute at @s if biome ~ ~ ~ minecraft:snowy_plains run scoreboard players set @s ec.tq_progress 1
execute at @s if biome ~ ~ ~ minecraft:snowy_taiga run scoreboard players set @s ec.tq_progress 1
execute at @s if biome ~ ~ ~ minecraft:snowy_beach run scoreboard players set @s ec.tq_progress 1
execute at @s if biome ~ ~ ~ minecraft:snowy_slopes run scoreboard players set @s ec.tq_progress 1
execute at @s if biome ~ ~ ~ minecraft:ice_spikes run scoreboard players set @s ec.tq_progress 1
execute at @s if biome ~ ~ ~ minecraft:frozen_river run scoreboard players set @s ec.tq_progress 1
execute at @s if biome ~ ~ ~ minecraft:frozen_ocean run scoreboard players set @s ec.tq_progress 1
execute if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete
