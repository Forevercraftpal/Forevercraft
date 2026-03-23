# Journal — Realm Milestones Sub-Page
# Shows 6 milestone categories in a 2×3 grid with completion progress
# All tagged Adv.MenuElement + Adv.SectionContent + Adv.JnSubPage
# Run as the player, at player, facing anchor

# Spawn title click interaction (claims ALL milestone categories)
execute rotated ~ 0 positioned ^ ^2.96 ^2.32 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMsTitleClick"],width:0.6f,height:0.08f,response:1b}

# ===== ROW 1 =====

# === Origins (left, 10 milestones) ===
execute rotated ~ 0 positioned ^0.40 ^2.67 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMsLbl0"],billboard:"center",text:{text:"Origins",color:"yellow",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^0.40 ^2.57 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMs0"],billboard:"center",text:{text:"- / 10",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^0.40 ^2.62 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMsClick0"],width:0.5f,height:0.07f,response:1b}

# === Social (right, 5 milestones) ===
execute rotated ~ 0 positioned ^-0.40 ^2.67 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMsLbl1"],billboard:"center",text:{text:"Social",color:"#FF69B4",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^-0.40 ^2.57 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMs1"],billboard:"center",text:{text:"- / 5",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^-0.40 ^2.62 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMsClick1"],width:0.5f,height:0.07f,response:1b}

# ===== ROW 2 =====

# === Guild & Warfare (left, 5 milestones) ===
execute rotated ~ 0 positioned ^0.40 ^2.33 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMsLbl2"],billboard:"center",text:{text:"Guild & Warfare",color:"dark_red",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^0.40 ^2.23 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMs2"],billboard:"center",text:{text:"- / 5",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^0.40 ^2.28 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMsClick2"],width:0.5f,height:0.07f,response:1b}

# === Adventure (right, 4 milestones) ===
execute rotated ~ 0 positioned ^-0.40 ^2.33 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMsLbl3"],billboard:"center",text:{text:"Adventure",color:"dark_aqua",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^-0.40 ^2.23 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMs3"],billboard:"center",text:{text:"- / 4",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^-0.40 ^2.28 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMsClick3"],width:0.5f,height:0.07f,response:1b}

# ===== ROW 3 =====

# === Combat (left, 4 milestones) ===
execute rotated ~ 0 positioned ^0.40 ^1.99 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMsLbl4"],billboard:"center",text:{text:"Combat",color:"red",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^0.40 ^1.89 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMs4"],billboard:"center",text:{text:"- / 4",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^0.40 ^1.94 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMsClick4"],width:0.5f,height:0.07f,response:1b}

# === Mastery (right, 4 milestones) ===
execute rotated ~ 0 positioned ^-0.40 ^1.99 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMsLbl5"],billboard:"center",text:{text:"Mastery",color:"light_purple",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^-0.40 ^1.89 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMs5"],billboard:"center",text:{text:"- / 4",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^-0.40 ^1.94 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsOv","Adv.JnMsClick5"],width:0.5f,height:0.07f,response:1b}

# Refresh with current data
function evercraft:codex/hub/journal/refresh_milestones
