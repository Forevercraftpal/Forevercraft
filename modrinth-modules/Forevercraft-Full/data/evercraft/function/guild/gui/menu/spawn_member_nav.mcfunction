# Guild Menu — Spawn member page navigation (< Page X/Y >)
# @s = player, positioned at guild_menu_bg

# Prev button <
execute positioned ~ ~-0.38 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.guild_menu_el","ec.guild_page_el","ec.gm_prev_txt"],billboard:"center",text:{text:"<",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute positioned ~ ~-0.42 ~ run summon interaction ~ ~ ~ {Tags:["ec.guild_menu_el","ec.guild_page_el","ec.gm_prev_click"],width:0.15f,height:0.06f,response:1b}

# Page text
execute store result storage evercraft:guild temp.gm_page int 1 run scoreboard players get @p[tag=ec.guild_viewer] ec.gm_page
execute store result storage evercraft:guild temp.gm_max int 1 run scoreboard players get #gm_max_page ec.temp
execute positioned ~ ~-0.38 ~-0.02 run function evercraft:guild/gui/menu/spawn_member_page_text with storage evercraft:guild temp

# Next button >
execute positioned ~ ~-0.38 ~-0.02 positioned ^-0.25 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.guild_menu_el","ec.guild_page_el","ec.gm_next_txt"],billboard:"center",text:{text:">",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute positioned ~ ~-0.42 ~ positioned ^-0.25 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["ec.guild_menu_el","ec.guild_page_el","ec.gm_next_click"],width:0.15f,height:0.06f,response:1b}
