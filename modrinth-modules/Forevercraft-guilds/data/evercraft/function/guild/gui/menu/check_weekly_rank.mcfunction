# Guild Menu — Check if this player ranks in top 3 weekly contribution
# @s = guilded player being checked

# Calculate delta
scoreboard players operation #wk_delta ec.temp = @s ec.guild_contrib
scoreboard players operation #wk_delta ec.temp -= @s ec.ge_weekly_contrib
execute if score #wk_delta ec.temp matches ..0 run return 0

# Insert-sort: check from top down, return after first match
execute if score #wk_delta ec.temp > #wk_top1 ec.temp run return run function evercraft:guild/gui/menu/weekly_insert_1
execute if score #wk_delta ec.temp > #wk_top2 ec.temp run return run function evercraft:guild/gui/menu/weekly_insert_2
execute if score #wk_delta ec.temp > #wk_top3 ec.temp run return run function evercraft:guild/gui/menu/weekly_insert_3
