# Dream Journal — Show current day number
# Uses time query day for the in-game day
execute store result score #dj_day ec.temp run time query day
execute store result storage evercraft:dj_temp day int 1 run scoreboard players get #dj_day ec.temp
execute store result storage evercraft:dj_temp visit int 1 run scoreboard players get @s ec.dj_count
function evercraft:dreaming_realm/journal/show_day_macro with storage evercraft:dj_temp
