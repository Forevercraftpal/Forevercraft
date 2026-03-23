# Showcase — Render filled slot for other player (macro, vertical, no interaction)
# $(name), $(color), $(y_pos)

# Achievement name with diamond marker
$execute rotated ~ 0 positioned ^ ^$(y_pos) ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el"],billboard:"center",text:[{text:"\u2726 ",color:"dark_gray"},{text:"$(name)",color:"$(color)",bold:true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
