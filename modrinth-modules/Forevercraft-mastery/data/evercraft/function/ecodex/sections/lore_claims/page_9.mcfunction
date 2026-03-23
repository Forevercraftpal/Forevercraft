# === LORE CLAIMS — Page 9 ===
# Run as: player, at player

# === LEFT COLUMN ===
# s161: The Harmonization
execute rotated ~ 0 positioned ^0.50 ^2.55 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Ec.LrPageContent","Ec.LrS1"],billboard:"center",text:{text:"...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
execute rotated ~ 0 positioned ^0.50 ^2.53 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Ec.LrPageContent","Ec.LrCl1"],width:0.7f,height:0.05f,response:1b}
# s162: Prophecy of Convergence
execute rotated ~ 0 positioned ^0.50 ^2.40 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Ec.LrPageContent","Ec.LrS2"],billboard:"center",text:{text:"...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
execute rotated ~ 0 positioned ^0.50 ^2.38 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Ec.LrPageContent","Ec.LrCl2"],width:0.7f,height:0.05f,response:1b}

# === RIGHT COLUMN ===
# s163: Echoes of Convergence
execute rotated ~ 0 positioned ^-0.50 ^2.25 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Ec.LrPageContent","Ec.LrS3"],billboard:"center",text:{text:"...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
execute rotated ~ 0 positioned ^-0.50 ^2.23 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Ec.LrPageContent","Ec.LrCl3"],width:0.7f,height:0.05f,response:1b}

# --- Navigation ---
execute rotated ~ 0 positioned ^ ^2.24 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Ec.LrPageContent"],billboard:"center",text:[{"text":"Page 9/9","color":"gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
execute rotated ~ 0 positioned ^-0.2 ^2.24 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Ec.LrPageContent","Ec.LrPgPrev"],billboard:"center",text:[{"text":"< Prev","color":"gold"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute rotated ~ 0 positioned ^-0.2 ^2.140 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Ec.LrPageContent","Ec.LrPgPrevCl"],width:0.4f,height:0.04f,response:1b}
# Refresh this page
function evercraft:ecodex/sections/lore_claims/refresh_page_9

