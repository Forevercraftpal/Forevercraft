# Cosmetics Section — Page 1: Tier Cosmetics
# 5 tiers in centered vertical list
# All entities tagged Adv.MenuElement + Adv.SectionContent + Adv.CosmPage
# Run as the player, at player, facing the anchor

# Page subtitle
execute rotated ~ 0 positioned ^ ^2.68 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"Advantage Level Rewards",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Tier 1: Particle Aura — unlocks at Lv.5
execute rotated ~ 0 positioned ^ ^2.48 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.Cosm0"],billboard:"center",text:{text:"Tier 1: Particle Aura",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.30f,0.30f,0.30f]}}
execute rotated ~ 0 positioned ^ ^2.43 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CosmClick0"],width:0.7f,height:0.07f,response:1b}

# Tier 2: Title Tag — unlocks at Lv.10
execute rotated ~ 0 positioned ^ ^2.26 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.Cosm1"],billboard:"center",text:{text:"Tier 2: Title Tag",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.30f,0.30f,0.30f]}}
execute rotated ~ 0 positioned ^ ^2.21 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CosmClick1"],width:0.7f,height:0.07f,response:1b}

# Tier 3: Effect Trail — unlocks at Lv.15
execute rotated ~ 0 positioned ^ ^2.04 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.Cosm2"],billboard:"center",text:{text:"Tier 3: Effect Trail",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.30f,0.30f,0.30f]}}
execute rotated ~ 0 positioned ^ ^1.99 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CosmClick2"],width:0.7f,height:0.07f,response:1b}

# Tier 4: Glowing Outline — unlocks at Lv.20
execute rotated ~ 0 positioned ^ ^1.82 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.Cosm3"],billboard:"center",text:{text:"Tier 4: Glowing Outline",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.30f,0.30f,0.30f]}}
execute rotated ~ 0 positioned ^ ^1.77 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CosmClick3"],width:0.7f,height:0.07f,response:1b}

# Tier 5: Crown Particles — unlocks at Lv.25
execute rotated ~ 0 positioned ^ ^1.6 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.Cosm4"],billboard:"center",text:{text:"Tier 5: Crown Particles",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.30f,0.30f,0.30f]}}
execute rotated ~ 0 positioned ^ ^1.55 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CosmClick4"],width:0.7f,height:0.07f,response:1b}

# Refresh cosmetic displays with current data
function evercraft:advantage/gui/refresh_cosmetics
