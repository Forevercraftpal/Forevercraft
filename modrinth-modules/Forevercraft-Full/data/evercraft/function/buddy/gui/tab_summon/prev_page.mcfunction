# Tab 3: Previous Page
# @s = player

execute if score @s ec.bd_summon_pg matches ..1 run return fail
scoreboard players remove @s ec.bd_summon_pg 1

# Rebuild list display
kill @e[type=text_display,tag=bd.summon_entry,predicate=evercraft:companions/check_id]
kill @e[type=text_display,tag=bd.summon_prev_text,predicate=evercraft:companions/check_id]
kill @e[type=text_display,tag=bd.summon_next_text,predicate=evercraft:companions/check_id]
kill @e[type=interaction,tag=bd.summon_prev_click,predicate=evercraft:companions/check_id]
kill @e[type=interaction,tag=bd.summon_next_click,predicate=evercraft:companions/check_id]
execute at @s run function evercraft:buddy/gui/tab_summon/build_list

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
