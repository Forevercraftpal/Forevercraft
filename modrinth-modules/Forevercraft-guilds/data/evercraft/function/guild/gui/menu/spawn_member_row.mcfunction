# Guild Menu — Spawn one member row (macro)
# $(rank_name), $(member_contrib), $(member_score)
# Position = correct row Y (set by caller)
# member_score matches the player's ec.temp score for selector resolution

$summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{selector:"@a[scores={ec.temp=$(member_score)},limit=1]"},{text:" │ ",color:"dark_gray"},{text:"$(rank_name)",color:"gold"},{text:" │ ",color:"dark_gray"},{text:"$(member_contrib)",color:"green"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }

# Clickable hitbox for this member row
summon interaction ~ ~-0.03 ~0.02 {Tags:["ec.guild_menu_el","ec.guild_page_el","ec.gm_member_click","ec.gm_member_new"], width:1.4f, height:0.10f, response:1b}
