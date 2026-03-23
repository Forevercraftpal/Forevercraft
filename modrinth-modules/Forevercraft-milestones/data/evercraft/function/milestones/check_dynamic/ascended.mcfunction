# Dynamic Milestone Check: Ascended — 50% of players reached DR 20+
scoreboard players set #rm_count_temp ec.var 0
execute as @a if score @s ec.dr_peak_ms matches 4.. run scoreboard players add #rm_count_temp ec.var 1
execute if score #rm_count_temp ec.var >= #rm_50pct ec.var run function evercraft:milestones/complete/ascended
