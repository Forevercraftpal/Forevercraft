# Artifact Collection — Uncommon Accessories
# 5 items on this page
# All tagged Adv.MenuElement + Adv.SectionContent + Adv.ArtItems
# Run as the player, at player, facing anchor

# === LEFT COLUMN ===
execute rotated ~ 0 positioned ^0.55 ^2.53 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtI_featherweight_stone"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^0.55 ^2.45 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtI_glowstone_pendant"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^0.55 ^2.37 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtI_iron_talisman"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# Refresh with current discovery data
execute rotated ~ 0 positioned ^-0.55 ^2.53 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtI_smelling_salts"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^-0.55 ^2.45 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtI_soothing_balm"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# Click interaction entities
execute rotated ~ 0 positioned ^ ^2.52 ^2.3 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtIClick0"],width:0.5f,height:0.035f,response:1b}
execute rotated ~ 0 positioned ^ ^2.43 ^2.3 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtIClick1"],width:0.5f,height:0.035f,response:1b}
execute rotated ~ 0 positioned ^ ^2.36 ^2.3 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtIClick2"],width:0.5f,height:0.035f,response:1b}
execute rotated ~ 0 positioned ^ ^2.52 ^2.3 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtIClick3"],width:0.5f,height:0.035f,response:1b}
execute rotated ~ 0 positioned ^ ^2.43 ^2.3 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtIClick4"],width:0.5f,height:0.035f,response:1b}

# Store artifact data for click handler
data modify storage evercraft:codex_gui art_slots set value ["featherweight_stone","glowstone_pendant","iron_talisman","smelling_salts","soothing_balm"]
data modify storage evercraft:codex_gui art_tier set value "uncommon"

function evercraft:codex/hub/artifacts/refresh/uncommon_accessories