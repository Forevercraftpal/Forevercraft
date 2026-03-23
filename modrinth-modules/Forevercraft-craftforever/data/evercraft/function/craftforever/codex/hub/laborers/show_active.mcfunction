# Laborer Registry — Show active laborers with status
# Run as player at player position

execute rotated ~ 0 positioned ^ ^2.48 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{"text":"\u2014 Active Workforce \u2014","color":"#AB47BC","bold":true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}

# Spawn 5 placeholder display slots (will be filled by iterator)
execute rotated ~ 0 positioned ^ ^2.28 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,line_width:400,Tags:["CF.MenuElement","CF.SectionContent","CF.LbLine1"],billboard:"center",text:{"text":"","color":"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

execute rotated ~ 0 positioned ^ ^2.00 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,line_width:400,Tags:["CF.MenuElement","CF.SectionContent","CF.LbLine2"],billboard:"center",text:{"text":"","color":"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

execute rotated ~ 0 positioned ^ ^1.72 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,line_width:400,Tags:["CF.MenuElement","CF.SectionContent","CF.LbLine3"],billboard:"center",text:{"text":"","color":"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

execute rotated ~ 0 positioned ^ ^1.44 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,line_width:400,Tags:["CF.MenuElement","CF.SectionContent","CF.LbLine4"],billboard:"center",text:{"text":"","color":"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

execute rotated ~ 0 positioned ^ ^1.16 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,line_width:400,Tags:["CF.MenuElement","CF.SectionContent","CF.LbLine5"],billboard:"center",text:{"text":"","color":"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

# Iterate through laborers and fill slots
scoreboard players set #cf_lb_line ec.temp 0
execute as @e[type=villager,tag=ec.laborer,distance=..64,sort=nearest,limit=5] run function evercraft:craftforever/codex/hub/laborers/fill_line
