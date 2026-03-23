# Artifact Collection — Exquisite Tools
# 1 items on this page
# All tagged Adv.MenuElement + Adv.SectionContent + Adv.ArtItems
# Run as the player, at player, facing anchor

# === LEFT COLUMN ===
execute rotated ~ 0 positioned ^0.55 ^2.53 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtI_ember_fishing_rod"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# Refresh with current discovery data

# Click interaction entities
execute rotated ~ 0 positioned ^ ^2.52 ^2.3 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtItems","Adv.ArtIClick0"],width:0.5f,height:0.035f,response:1b}

# Store artifact data for click handler
data modify storage evercraft:codex_gui art_slots set value ["ember_fishing_rod"]
data modify storage evercraft:codex_gui art_tier set value "exquisite"

function evercraft:codex/hub/artifacts/refresh/exquisite_tools