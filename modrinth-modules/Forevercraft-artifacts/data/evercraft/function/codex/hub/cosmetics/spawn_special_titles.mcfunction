# Cosmetics Section — Page 6: Special Titles
# Dream Journal (2) + Reputation (5) + Guild Diplomacy (8) = 15 items
# All entities tagged Adv.MenuElement + Adv.SectionContent + Adv.CosmPage
# Run as the player, at player, facing the anchor

# === DREAM JOURNAL SECTION ===
execute rotated ~ 0 positioned ^ ^2.57 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"\u2726 Dream Journal",color:"#E0B0FF",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.189f,0.189f,0.189f]}}

# Dreamkeeper
execute rotated ~ 0 positioned ^0.50 ^2.43 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPT0"],billboard:"center",text:{text:"Dreamkeeper  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.23f,0.23f,0.23f]}}
execute rotated ~ 0 positioned ^ ^2.41 ^2.3 positioned ^0.50 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPTClick0"],width:0.50f,height:0.04f,response:1b}

# Dream Chronicler
execute rotated ~ 0 positioned ^-0.50 ^2.43 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPT1"],billboard:"center",text:{text:"Dream Chronicler  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.23f,0.23f,0.23f]}}
execute rotated ~ 0 positioned ^ ^2.41 ^2.3 positioned ^-0.50 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPTClick1"],width:0.50f,height:0.04f,response:1b}

# === DIVIDER ===
execute rotated ~ 0 positioned ^ ^2.29 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.189f,0.189f,0.189f]}}

# === REPUTATION SECTION ===
execute rotated ~ 0 positioned ^ ^2.21 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"\u2726 Reputation",color:"gold",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.189f,0.189f,0.189f]}}

# Acquaintance
execute rotated ~ 0 positioned ^0.65 ^2.08 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPT2"],billboard:"center",text:{text:"Acquaintance  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.23f,0.23f,0.23f]}}
execute rotated ~ 0 positioned ^ ^2.06 ^2.3 positioned ^0.65 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPTClick2"],width:0.50f,height:0.04f,response:1b}

# Friend
execute rotated ~ 0 positioned ^-0.65 ^2.08 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPT3"],billboard:"center",text:{text:"Friend  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.23f,0.23f,0.23f]}}
execute rotated ~ 0 positioned ^ ^2.06 ^2.3 positioned ^-0.65 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPTClick3"],width:0.50f,height:0.04f,response:1b}

# Ally
execute rotated ~ 0 positioned ^0.65 ^1.95 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPT4"],billboard:"center",text:{text:"Ally  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.23f,0.23f,0.23f]}}
execute rotated ~ 0 positioned ^ ^1.93 ^2.3 positioned ^0.65 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPTClick4"],width:0.50f,height:0.04f,response:1b}

# Hero
execute rotated ~ 0 positioned ^-0.65 ^1.95 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPT5"],billboard:"center",text:{text:"Hero  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.23f,0.23f,0.23f]}}
execute rotated ~ 0 positioned ^ ^1.93 ^2.3 positioned ^-0.65 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPTClick5"],width:0.50f,height:0.04f,response:1b}

# Legend (centered)
execute rotated ~ 0 positioned ^ ^1.82 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPT6"],billboard:"center",text:{text:"Legend  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.23f,0.23f,0.23f]}}
execute rotated ~ 0 positioned ^ ^2.3 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPTClick6"],width:0.50f,height:0.04f,response:1b}

# === DIVIDER ===
execute rotated ~ 0 positioned ^ ^1.69 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.189f,0.189f,0.189f]}}

# === GUILD DIPLOMACY SECTION ===
execute rotated ~ 0 positioned ^ ^1.61 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"\u2726 Guild Diplomacy",color:"dark_purple",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.189f,0.189f,0.189f]}}

# Winner titles — Left column
# Novice Victor
execute rotated ~ 0 positioned ^0.65 ^1.48 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPT7"],billboard:"center",text:{text:"Novice Victor  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^ ^1.46 ^2.3 positioned ^0.65 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPTClick7"],width:0.50f,height:0.04f,response:1b}

# Proven Victor
execute rotated ~ 0 positioned ^0.65 ^1.37 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPT8"],billboard:"center",text:{text:"Proven Victor  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^ ^1.35 ^2.3 positioned ^0.65 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPTClick8"],width:0.50f,height:0.04f,response:1b}

# Veteran Victor
execute rotated ~ 0 positioned ^0.65 ^1.26 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPT9"],billboard:"center",text:{text:"Veteran Victor  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^ ^1.24 ^2.3 positioned ^0.65 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPTClick9"],width:0.50f,height:0.04f,response:1b}

# Legendary Victor
execute rotated ~ 0 positioned ^0.65 ^1.15 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPT10"],billboard:"center",text:{text:"Legendary Victor  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^ ^1.13 ^2.3 positioned ^0.65 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPTClick10"],width:0.50f,height:0.04f,response:1b}

# Loser titles — Right column
# Humbled
execute rotated ~ 0 positioned ^-0.65 ^1.48 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPT11"],billboard:"center",text:{text:"Humbled  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^ ^1.46 ^2.3 positioned ^-0.65 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPTClick11"],width:0.50f,height:0.04f,response:1b}

# Battered
execute rotated ~ 0 positioned ^-0.65 ^1.37 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPT12"],billboard:"center",text:{text:"Battered  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^ ^1.35 ^2.3 positioned ^-0.65 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPTClick12"],width:0.50f,height:0.04f,response:1b}

# Weathered
execute rotated ~ 0 positioned ^-0.65 ^1.26 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPT13"],billboard:"center",text:{text:"Weathered  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^ ^1.24 ^2.3 positioned ^-0.65 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPTClick13"],width:0.50f,height:0.04f,response:1b}

# Unbroken
execute rotated ~ 0 positioned ^-0.65 ^1.15 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPT14"],billboard:"center",text:{text:"Unbroken  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^ ^1.13 ^2.3 positioned ^-0.65 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.SPTClick14"],width:0.50f,height:0.04f,response:1b}

# Subtitle
execute rotated ~ 0 positioned ^ ^1.04 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"Guild titles earned through Guild Diplomacy",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.162f,0.162f,0.162f]}}

# Refresh displays with current data
function evercraft:advantage/gui/refresh_special_titles
