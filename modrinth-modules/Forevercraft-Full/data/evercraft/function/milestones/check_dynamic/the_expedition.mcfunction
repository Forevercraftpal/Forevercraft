# Dynamic Milestone Check: The Expedition — 50% of players explored 15+ biomes
scoreboard players set #rm_count_temp ec.var 0
execute as @a if score @s jn.biome_count matches 15.. run scoreboard players add #rm_count_temp ec.var 1
execute if score #rm_count_temp ec.var >= #rm_50pct ec.var run function evercraft:milestones/complete/the_expedition
