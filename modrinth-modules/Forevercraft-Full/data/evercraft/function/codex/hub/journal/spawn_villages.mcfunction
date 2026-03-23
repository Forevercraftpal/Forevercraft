# Journal — Villages Sub-Page
# Dynamic village count display + 3 milestones
# All tagged Adv.MenuElement + Adv.SectionContent + Adv.JnSubPage
# Run as the player, at player, facing anchor

# Village count (dynamic — updated by refresh macro)
execute rotated ~ 0 positioned ^ ^2.45 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnVCount"],billboard:"center",text:{text:"...",color:"white"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.486f,0.486f,0.486f]}}

# Milestones header
execute rotated ~ 0 positioned ^ ^2.19 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage"],billboard:"center",text:{text:"— Milestones —",color:"gold"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# Milestone 1: 5 Villages — Novice Traveler
execute rotated ~ 0 positioned ^ ^2.05 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnVm1"],billboard:"center",text:{text:"? 5 Villages — Novice Traveler",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# Milestone 2: 10 Villages — Seasoned Explorer
execute rotated ~ 0 positioned ^ ^1.91 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnVm2"],billboard:"center",text:{text:"? 10 Villages — Seasoned Explorer",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# Milestone 3: 20 Villages — Master Cartographer
execute rotated ~ 0 positioned ^ ^1.77 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnVm3"],billboard:"center",text:{text:"? 20 Villages — Master Cartographer",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# Refresh with current data
function evercraft:codex/hub/journal/refresh_villages
