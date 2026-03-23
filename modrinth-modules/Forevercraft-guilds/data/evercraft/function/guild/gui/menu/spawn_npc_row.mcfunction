# Guild Menu — Spawn one NPC member row (macro)
$# $(npc_prof) = profession string

$summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.guild_menu_el","ec.guild_page_el"],billboard:"center",text:[{"text":"$(npc_prof)","color":"aqua","italic":true},{"text":" │ ","color":"dark_gray"},{"text":"NPC","color":"gray","italic":true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
