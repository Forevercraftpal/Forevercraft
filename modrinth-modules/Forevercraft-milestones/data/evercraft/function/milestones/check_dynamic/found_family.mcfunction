# Dynamic Milestone Check: Found Family — 75% of players have 2+ friends
scoreboard players set #rm_count_temp ec.var 0
execute as @a if score @s ec.fr_count matches 2.. run scoreboard players add #rm_count_temp ec.var 1
execute if score #rm_count_temp ec.var >= #rm_75pct ec.var run function evercraft:milestones/complete/found_family
