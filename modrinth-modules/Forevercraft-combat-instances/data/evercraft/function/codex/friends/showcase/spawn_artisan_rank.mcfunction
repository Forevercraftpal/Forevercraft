# Showcase — Spawn Artisan Rank display (macro)
$# $(cf_rank) — Artisan Rank level

$execute rotated ~ 0 positioned ^-0.55 ^2.15 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el"],billboard:"center",text:[{"text":"Artisan: ","color":"gray"},{"text":"$(cf_rank)","color":"#8BC34A","bold":true}],background:0,shadow:1b,transformation:{"left_rotation":[0f,0f,0f,1f],"right_rotation":[0f,0f,0f,1f],"translation":[0f,0f,0f],"scale":[0.19f,0.19f,0.19f]}}
