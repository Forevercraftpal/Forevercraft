# Weekly leaderboard — Insert into rank 3
# @s = player

data modify storage evercraft:guild weekly.top3_name set from entity @s CustomName
scoreboard players operation #wk_top3 ec.temp = #wk_delta ec.temp
