# Housing Guide — Show home stats
# Args: tier, decor, visitors

$execute rotated ~ 0 positioned ^ ^2.45 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"Home Tier: ","color":"gray"},{"text":"$(tier)","color":"#66BB6A","bold":true},{"text":" / 5","color":"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}

$execute rotated ~ 0 positioned ^ ^2.20 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"Comfort: ","color":"gray"},{"text":"$(decor)","color":"#8BC34A","bold":true},{"text":"    Visitors: ","color":"gray"},{"text":"$(visitors)","color":"white"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Laborer summary line
execute store result storage evercraft:cf_temp lb_count int 1 run scoreboard players get @s ec.lb_count
execute store result storage evercraft:cf_temp lb_max int 1 run scoreboard players get @s ec.lb_max
function evercraft:craftforever/codex/hub/housing/show_laborer_summary with storage evercraft:cf_temp

# Tier upgrade reference
execute rotated ~ 0 positioned ^ ^1.55 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,line_width:300,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"Tier Upgrades","color":"#66BB6A","bold":true},{"text":" (Netherite Ingots)\n\n","color":"dark_gray"},{"text":" Tier 2: ","color":"white"},{"text":"16 ingots","color":"gray"},{"text":" \u2014 Storage access\n","color":"dark_gray"},{"text":" Tier 3: ","color":"white"},{"text":"32 ingots","color":"gray"},{"text":" \u2014 Satchel\n","color":"dark_gray"},{"text":" Tier 4: ","color":"white"},{"text":"64 ingots","color":"gray"},{"text":" \u2014 Golem defense\n","color":"dark_gray"},{"text":" Tier 5: ","color":"white"},{"text":"128 ingots","color":"gray"},{"text":" \u2014 Max comfort","color":"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Comfort bonus explanation
execute rotated ~ 0 positioned ^ ^0.95 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,line_width:300,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"Comfort Benefits","color":"#8BC34A","bold":true},{"text":"\n\n","color":"gray"},{"text":" \u2022 ","color":"dark_gray"},{"text":"Laborer expedition quality","color":"#AB47BC"},{"text":"\n","color":"gray"},{"text":" \u2022 ","color":"dark_gray"},{"text":"Faster expedition timers","color":"#AB47BC"},{"text":"\n","color":"gray"},{"text":" \u2022 ","color":"dark_gray"},{"text":"Forge success bonus","color":"#FFB74D"},{"text":"\n","color":"gray"},{"text":" \u2022 ","color":"dark_gray"},{"text":"Zone buff strength","color":"#66BB6A"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
