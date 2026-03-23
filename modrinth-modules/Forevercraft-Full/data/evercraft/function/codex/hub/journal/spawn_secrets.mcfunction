# Journal — Secrets Sub-Page (5 secrets)
# Each secret = name line + description line
# All tagged Adv.MenuElement + Adv.SectionContent + Adv.JnSubPage
# Run as the player, at player, facing anchor

# s1: Depths of the World
execute rotated ~ 0 positioned ^ ^2.57 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnS1"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
execute rotated ~ 0 positioned ^ ^2.47 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnS1D"],billboard:"center",text:{text:"Go deeper...",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.189f,0.189f,0.189f]}}

# s2: Sky Wanderer
execute rotated ~ 0 positioned ^ ^2.31 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnS2"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
execute rotated ~ 0 positioned ^ ^2.21 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnS2D"],billboard:"center",text:{text:"Reach for the sky...",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.189f,0.189f,0.189f]}}

# s3: Dimensional Traveler
execute rotated ~ 0 positioned ^ ^2.05 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnS3"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
execute rotated ~ 0 positioned ^ ^1.95 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnS3D"],billboard:"center",text:{text:"There are other worlds...",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.189f,0.189f,0.189f]}}

# s4: Lore Collector
execute rotated ~ 0 positioned ^ ^1.79 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnS4"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
execute rotated ~ 0 positioned ^ ^1.69 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnS4D"],billboard:"center",text:{text:"Gather the stories of the world...",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.189f,0.189f,0.189f]}}

# s5: World Explorer
execute rotated ~ 0 positioned ^ ^1.53 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnS5"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
execute rotated ~ 0 positioned ^ ^1.43 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnS5D"],billboard:"center",text:{text:"Leave no stone unturned...",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.189f,0.189f,0.189f]}}

# Refresh with current data
function evercraft:codex/hub/journal/refresh_secrets
