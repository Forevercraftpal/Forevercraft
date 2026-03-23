# Weekly leaderboard — Insert into rank 2 (shift 2→3)
# @s = player

# Shift #2 → #3
data modify storage evercraft:guild weekly.top3_name set from storage evercraft:guild weekly.top2_name
scoreboard players operation #wk_top3 ec.temp = #wk_top2 ec.temp

# Set new #2
data modify storage evercraft:guild weekly.top2_name set from entity @s CustomName
scoreboard players operation #wk_top2 ec.temp = #wk_delta ec.temp
