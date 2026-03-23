# Macro: Increment current biome's time and read back into ec.bm_time
$scoreboard players add @s ec.bm$(id) 1
$execute store result score @s ec.bm_time run scoreboard players get @s ec.bm$(id)
