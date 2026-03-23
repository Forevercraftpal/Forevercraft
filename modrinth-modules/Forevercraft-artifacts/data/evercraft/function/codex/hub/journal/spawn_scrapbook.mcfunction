# Journal — Pet Scrapbook Overview (Page 15)
# Shows active pet info, memory count, and "View Memories" button
# All tagged Adv.MenuElement + Adv.SectionContent + Adv.JnSubPage
# Run as the player, at player, facing anchor

# === Active Pet Section ===

# Header
execute rotated ~ 0 positioned ^ ^2.65 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnScOv"],billboard:"center",text:{text:"--- Active Companion ---",color:"#FF8C00"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# Pet name line (set by refresh)
execute rotated ~ 0 positioned ^ ^2.50 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnScOv","Adv.JnScPetName"],billboard:"center",text:{text:"No companion summoned",color:"gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}

# Memory count line (set by refresh)
execute rotated ~ 0 positioned ^ ^2.35 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnScOv","Adv.JnScMemCount"],billboard:"center",text:{text:"0 / 25 memories",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# Bond XP bonus line (set by refresh)
execute rotated ~ 0 positioned ^ ^2.22 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnScOv","Adv.JnScBonus"],billboard:"center",text:{text:"Bond XP Bonus: +0%",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.189f,0.189f,0.189f]}}

# === View Memories Button ===
execute rotated ~ 0 positioned ^ ^2.02 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnScOv","Adv.JnScMemBtn"],billboard:"center",text:{text:"[ View Memories ]",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^ ^1.98 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnScOv","Adv.JnScMemClick"],width:0.5f,height:0.07f,response:1b}

# === Divider ===
execute rotated ~ 0 positioned ^ ^1.82 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnScOv"],billboard:"center",text:{text:"---",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.189f,0.189f,0.189f]}}

# === Info text ===
execute rotated ~ 0 positioned ^ ^1.68 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnScOv"],billboard:"center",text:{text:"Shared memories strengthen your bond.",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.189f,0.189f,0.189f]}}
execute rotated ~ 0 positioned ^ ^1.56 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnScOv"],billboard:"center",text:{text:"More memories = more bond XP!",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.189f,0.189f,0.189f]}}

# Refresh dynamic content
function evercraft:codex/hub/journal/refresh_scrapbook
