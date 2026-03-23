# World Milestones — Increment: Biome Visit
# Called as player after biome detection sets ec.biome_id
# Checks if this biome is new for the world and increments counter

execute if score @s ec.biome_id matches 0 unless score #rm_b0 ec.var matches 1 run scoreboard players set #rm_b0 ec.var 1
execute if score @s ec.biome_id matches 0 unless score #rm_b0 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 0 run scoreboard players set #rm_b0 ec.var 2

execute if score @s ec.biome_id matches 1 unless score #rm_b1 ec.var matches 1 run scoreboard players set #rm_b1 ec.var 1
execute if score @s ec.biome_id matches 1 unless score #rm_b1 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 1 run scoreboard players set #rm_b1 ec.var 2

execute if score @s ec.biome_id matches 2 unless score #rm_b2 ec.var matches 1 run scoreboard players set #rm_b2 ec.var 1
execute if score @s ec.biome_id matches 2 unless score #rm_b2 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 2 run scoreboard players set #rm_b2 ec.var 2

execute if score @s ec.biome_id matches 3 unless score #rm_b3 ec.var matches 1 run scoreboard players set #rm_b3 ec.var 1
execute if score @s ec.biome_id matches 3 unless score #rm_b3 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 3 run scoreboard players set #rm_b3 ec.var 2

execute if score @s ec.biome_id matches 4 unless score #rm_b4 ec.var matches 1 run scoreboard players set #rm_b4 ec.var 1
execute if score @s ec.biome_id matches 4 unless score #rm_b4 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 4 run scoreboard players set #rm_b4 ec.var 2

execute if score @s ec.biome_id matches 5 unless score #rm_b5 ec.var matches 1 run scoreboard players set #rm_b5 ec.var 1
execute if score @s ec.biome_id matches 5 unless score #rm_b5 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 5 run scoreboard players set #rm_b5 ec.var 2

execute if score @s ec.biome_id matches 6 unless score #rm_b6 ec.var matches 1 run scoreboard players set #rm_b6 ec.var 1
execute if score @s ec.biome_id matches 6 unless score #rm_b6 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 6 run scoreboard players set #rm_b6 ec.var 2

execute if score @s ec.biome_id matches 7 unless score #rm_b7 ec.var matches 1 run scoreboard players set #rm_b7 ec.var 1
execute if score @s ec.biome_id matches 7 unless score #rm_b7 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 7 run scoreboard players set #rm_b7 ec.var 2

execute if score @s ec.biome_id matches 8 unless score #rm_b8 ec.var matches 1 run scoreboard players set #rm_b8 ec.var 1
execute if score @s ec.biome_id matches 8 unless score #rm_b8 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 8 run scoreboard players set #rm_b8 ec.var 2

execute if score @s ec.biome_id matches 9 unless score #rm_b9 ec.var matches 1 run scoreboard players set #rm_b9 ec.var 1
execute if score @s ec.biome_id matches 9 unless score #rm_b9 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 9 run scoreboard players set #rm_b9 ec.var 2

execute if score @s ec.biome_id matches 10 unless score #rm_b10 ec.var matches 1 run scoreboard players set #rm_b10 ec.var 1
execute if score @s ec.biome_id matches 10 unless score #rm_b10 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 10 run scoreboard players set #rm_b10 ec.var 2

execute if score @s ec.biome_id matches 11 unless score #rm_b11 ec.var matches 1 run scoreboard players set #rm_b11 ec.var 1
execute if score @s ec.biome_id matches 11 unless score #rm_b11 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 11 run scoreboard players set #rm_b11 ec.var 2

execute if score @s ec.biome_id matches 12 unless score #rm_b12 ec.var matches 1 run scoreboard players set #rm_b12 ec.var 1
execute if score @s ec.biome_id matches 12 unless score #rm_b12 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 12 run scoreboard players set #rm_b12 ec.var 2

execute if score @s ec.biome_id matches 13 unless score #rm_b13 ec.var matches 1 run scoreboard players set #rm_b13 ec.var 1
execute if score @s ec.biome_id matches 13 unless score #rm_b13 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 13 run scoreboard players set #rm_b13 ec.var 2

execute if score @s ec.biome_id matches 14 unless score #rm_b14 ec.var matches 1 run scoreboard players set #rm_b14 ec.var 1
execute if score @s ec.biome_id matches 14 unless score #rm_b14 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 14 run scoreboard players set #rm_b14 ec.var 2

execute if score @s ec.biome_id matches 15 unless score #rm_b15 ec.var matches 1 run scoreboard players set #rm_b15 ec.var 1
execute if score @s ec.biome_id matches 15 unless score #rm_b15 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 15 run scoreboard players set #rm_b15 ec.var 2

execute if score @s ec.biome_id matches 16 unless score #rm_b16 ec.var matches 1 run scoreboard players set #rm_b16 ec.var 1
execute if score @s ec.biome_id matches 16 unless score #rm_b16 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 16 run scoreboard players set #rm_b16 ec.var 2

execute if score @s ec.biome_id matches 17 unless score #rm_b17 ec.var matches 1 run scoreboard players set #rm_b17 ec.var 1
execute if score @s ec.biome_id matches 17 unless score #rm_b17 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 17 run scoreboard players set #rm_b17 ec.var 2

execute if score @s ec.biome_id matches 18 unless score #rm_b18 ec.var matches 1 run scoreboard players set #rm_b18 ec.var 1
execute if score @s ec.biome_id matches 18 unless score #rm_b18 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 18 run scoreboard players set #rm_b18 ec.var 2

execute if score @s ec.biome_id matches 19 unless score #rm_b19 ec.var matches 1 run scoreboard players set #rm_b19 ec.var 1
execute if score @s ec.biome_id matches 19 unless score #rm_b19 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 19 run scoreboard players set #rm_b19 ec.var 2

execute if score @s ec.biome_id matches 20 unless score #rm_b20 ec.var matches 1 run scoreboard players set #rm_b20 ec.var 1
execute if score @s ec.biome_id matches 20 unless score #rm_b20 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 20 run scoreboard players set #rm_b20 ec.var 2

execute if score @s ec.biome_id matches 21 unless score #rm_b21 ec.var matches 1 run scoreboard players set #rm_b21 ec.var 1
execute if score @s ec.biome_id matches 21 unless score #rm_b21 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 21 run scoreboard players set #rm_b21 ec.var 2

execute if score @s ec.biome_id matches 22 unless score #rm_b22 ec.var matches 1 run scoreboard players set #rm_b22 ec.var 1
execute if score @s ec.biome_id matches 22 unless score #rm_b22 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 22 run scoreboard players set #rm_b22 ec.var 2

execute if score @s ec.biome_id matches 23 unless score #rm_b23 ec.var matches 1 run scoreboard players set #rm_b23 ec.var 1
execute if score @s ec.biome_id matches 23 unless score #rm_b23 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 23 run scoreboard players set #rm_b23 ec.var 2

execute if score @s ec.biome_id matches 24 unless score #rm_b24 ec.var matches 1 run scoreboard players set #rm_b24 ec.var 1
execute if score @s ec.biome_id matches 24 unless score #rm_b24 ec.var matches 2.. run scoreboard players add #rm_biomes ec.var 1
execute if score @s ec.biome_id matches 24 run scoreboard players set #rm_b24 ec.var 2
