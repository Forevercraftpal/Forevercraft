# Showcase — Spawn teleport button for best friends
# Macro: $(target_cid), $(tp_ready), $(tp_remaining_h), $(tp_remaining_m)

# Ready state: clickable button
execute if score #sc_tp_ready ec.temp matches 1 rotated ~ 0 positioned ^ ^1.10 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_tp_txt"],billboard:"center",text:[{text:"[ ",color:"dark_gray"},{text:"Teleport",color:"light_purple",bold:true},{text:" ]",color:"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute if score #sc_tp_ready ec.temp matches 1 rotated ~ 0 positioned ^ ^1.06 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_tp_btn"],width:0.4f,height:0.10f,response:1b}

# Cooldown state: gray unclickable text
$execute if score #sc_tp_ready ec.temp matches 0 rotated ~ 0 positioned ^ ^1.10 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_tp_txt"],billboard:"center",text:[{text:"[ ",color:"dark_gray"},{text:"Teleport: $(tp_remaining_h)h $(tp_remaining_m)m",color:"gray"},{text:" ]",color:"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
