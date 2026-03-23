# Material Index — Header display with count
# Macro: $(mat_count)

$execute rotated ~ 0 positioned ^ ^2.55 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"$(mat_count)","color":"#8BC34A","bold":true},{"text":"/15 Biome Materials","color":"gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.31f,0.31f,0.31f]}}
