# Guild Menu — Spawn activity name row + [?] button (macro)
# $(activity_name) — spawned at current position
# Called with positioned already set

$summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"Activity: ",color:"gray"},{text:"$(activity_name)",color:"gold",bold:true}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]} }

# [?] info button — offset right from activity name
execute positioned ~-0.45 ~-0.06 ~0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_ev_info_txt"], billboard:"center", text:{text:"[?]",color:"aqua"}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.23f,0.23f,0.23f]} }
execute positioned ~-0.45 ~-0.16 ~0.04 run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_ev_info_btn"], width:0.15f, height:0.10f, response:1b }
