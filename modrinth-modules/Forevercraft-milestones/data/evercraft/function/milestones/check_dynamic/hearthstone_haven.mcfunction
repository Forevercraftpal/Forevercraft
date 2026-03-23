# Dynamic Milestone Check: Hearthstone Haven — 75% of players have homes
scoreboard players set #rm_count_temp ec.var 0
execute as @a if score @s hs.tier matches 1.. run scoreboard players add #rm_count_temp ec.var 1
execute if score #rm_count_temp ec.var >= #rm_75pct ec.var run function evercraft:milestones/complete/hearthstone_haven
