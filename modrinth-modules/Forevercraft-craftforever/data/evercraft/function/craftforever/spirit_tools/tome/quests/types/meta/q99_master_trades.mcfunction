# Q99: Master of All Trades — 75+ tome quests done AND Artisan Rank 20+
scoreboard players set @s ec.tq_progress 0
# Condition 1: 75+ quests done (current part >= 76 means 75 completed)
execute if score @s ec.tq_part matches 99 run scoreboard players add @s ec.tq_progress 1
# Condition 2: Artisan Rank 20+
execute if score @s ec.cf_rank matches 20.. run scoreboard players add @s ec.tq_progress 1
# Both conditions met = progress 2, target is 2
execute if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete
