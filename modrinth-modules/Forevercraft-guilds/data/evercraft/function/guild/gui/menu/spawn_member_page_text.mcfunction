# Guild Menu — Spawn page text (macro)
# $(gm_page) = current page, $(gm_max) = max page

$summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el","ec.gm_page_txt"], billboard:"center", text:[{text:"Page $(gm_page) / $(gm_max)",color:"white"}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
