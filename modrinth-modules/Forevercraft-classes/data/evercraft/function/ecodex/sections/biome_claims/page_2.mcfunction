# === BIOME MASTERY CLAIMS — Page 2 ===
# Run as: player, at player

# b20: Warped Forest
execute rotated ~ 0 positioned ^ ^2.62 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Ec.BmPageContent","Ec.BmS1"],billboard:"center",text:{text:"...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
execute rotated ~ 0 positioned ^ ^2.6 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Ec.BmPageContent","Ec.BmCl1"],width:0.7f,height:0.04f,response:1b}

# b21: Basalt Deltas
execute rotated ~ 0 positioned ^ ^2.535 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Ec.BmPageContent","Ec.BmS2"],billboard:"center",text:{text:"...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
execute rotated ~ 0 positioned ^ ^2.515 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Ec.BmPageContent","Ec.BmCl2"],width:0.7f,height:0.04f,response:1b}

# b22: Soul Sand Valley
execute rotated ~ 0 positioned ^ ^2.45 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Ec.BmPageContent","Ec.BmS3"],billboard:"center",text:{text:"...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
execute rotated ~ 0 positioned ^ ^2.43 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Ec.BmPageContent","Ec.BmCl3"],width:0.7f,height:0.04f,response:1b}

# b23: The End
execute rotated ~ 0 positioned ^ ^2.365 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Ec.BmPageContent","Ec.BmS4"],billboard:"center",text:{text:"...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
execute rotated ~ 0 positioned ^ ^2.345 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Ec.BmPageContent","Ec.BmCl4"],width:0.7f,height:0.04f,response:1b}

# b24: Windswept Hills
execute rotated ~ 0 positioned ^ ^2.28 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Ec.BmPageContent","Ec.BmS5"],billboard:"center",text:{text:"...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
execute rotated ~ 0 positioned ^ ^2.26 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Ec.BmPageContent","Ec.BmCl5"],width:0.7f,height:0.04f,response:1b}

# --- Navigation ---
execute rotated ~ 0 positioned ^ ^2.07 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Ec.BmPageContent"],billboard:"center",text:[{"text":"Page 2/2","color":"gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
execute rotated ~ 0 positioned ^-0.2 ^2.07 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Ec.BmPageContent","Ec.BmPgPrev"],billboard:"center",text:[{"text":"< Prev","color":"gold"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute rotated ~ 0 positioned ^-0.2 ^2.05 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Ec.BmPageContent","Ec.BmPgPrevCl"],width:0.4f,height:0.04f,response:1b}

# Refresh this page
function evercraft:ecodex/sections/biome_claims/refresh_page_2
