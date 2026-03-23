# Artifact Collection — Mythical Tools
# 5 items on this page
# All tagged Adv.MenuElement + Adv.SectionContent + Adv.ArtItems
# Run as the player, at player, facing anchor

# === LEFT COLUMN ===
execute rotated ~ 0 positioned ^0.55 ^2.53 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtI_anglers_lip_ripper"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^0.55 ^2.45 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtI_axe_of_honor"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^0.55 ^2.37 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtI_hoe_of_honor"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^0.55 ^2.29 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtI_journey_pickaxe"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^0.55 ^2.21 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtI_journey_shovel"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# Refresh with current discovery data

# Click interaction entities
execute rotated ~ 0 positioned ^ ^2.52 ^2.3 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtIClick0"],width:0.5f,height:0.035f,response:1b}
execute rotated ~ 0 positioned ^ ^2.43 ^2.3 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtIClick1"],width:0.5f,height:0.035f,response:1b}
execute rotated ~ 0 positioned ^ ^2.36 ^2.3 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtIClick2"],width:0.5f,height:0.035f,response:1b}
execute rotated ~ 0 positioned ^ ^2.28 ^2.3 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtIClick3"],width:0.5f,height:0.035f,response:1b}
execute rotated ~ 0 positioned ^ ^2.2 ^2.3 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtIClick4"],width:0.5f,height:0.035f,response:1b}

# Store artifact data for click handler
data modify storage evercraft:codex_gui art_slots set value ["anglers_lip_ripper","axe_of_honor","hoe_of_honor","journey_pickaxe","journey_shovel"]
data modify storage evercraft:codex_gui art_tier set value "mythical"

function evercraft:codex/hub/artifacts/refresh/mythical_tools
