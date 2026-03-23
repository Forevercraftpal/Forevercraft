# Tab 3: Show Page Info
# @s = player

# Calculate max pages
scoreboard players operation #bd_max_pg ec.temp = #bd_summon_total ec.temp
scoreboard players add #bd_max_pg ec.temp 9
scoreboard players set #bd_pg_div ec.temp 10
scoreboard players operation #bd_max_pg ec.temp /= #bd_pg_div ec.temp
execute if score #bd_max_pg ec.temp matches ..1 run scoreboard players set #bd_max_pg ec.temp 1

execute store result storage evercraft:buddy temp.page int 1 run scoreboard players get @s ec.bd_summon_pg
execute store result storage evercraft:buddy temp.max_page int 1 run scoreboard players get #bd_max_pg ec.temp
execute store result storage evercraft:buddy temp.total int 1 run scoreboard players get #bd_summon_total ec.temp

function evercraft:buddy/gui/tab_summon/render_page_text with storage evercraft:buddy temp
