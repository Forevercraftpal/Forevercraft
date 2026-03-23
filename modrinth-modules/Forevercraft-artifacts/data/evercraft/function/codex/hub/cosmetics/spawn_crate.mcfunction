# Cosmetics Section — Page 2: Crate Particles
# 2-column layout: 18 particles (4 zones: Feet, Head, Aura, Ambient)
# All entities tagged Adv.MenuElement + Adv.SectionContent + Adv.CosmPage
# Run as the player, at player, facing the anchor

# ============================================
# === PARTICLES SECTION ===
# ============================================

# Section header
execute rotated ~ 0 positioned ^ ^2.68 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"\u2726 Particles \u2726",color:"light_purple",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}

# === FEET ZONE (LEFT ^0.55) — Particles 1-5 ===

# Zone label: Feet
execute rotated ~ 0 positioned ^1.10 ^2.56 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"[Feet]",color:"aqua"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# Particle 1: Frostwalker
execute rotated ~ 0 positioned ^0.70 ^2.56 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP0"],billboard:"center",text:{text:"Frostwalker",color:"aqua"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.54 ^2.3 positioned ^0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick0"],width:0.50f,height:0.04f,response:1b}

# Particle 2: Blazeborn
execute rotated ~ 0 positioned ^0.70 ^2.46 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP1"],billboard:"center",text:{text:"Blazeborn",color:"red"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.44 ^2.3 positioned ^0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick1"],width:0.50f,height:0.04f,response:1b}

# Particle 3: Soulstepper
execute rotated ~ 0 positioned ^0.70 ^2.36 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP2"],billboard:"center",text:{text:"Soulstepper",color:"dark_aqua"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.34 ^2.3 positioned ^0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick2"],width:0.50f,height:0.04f,response:1b}

# Particle 4: Mudtreader
execute rotated ~ 0 positioned ^0.70 ^2.26 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP3"],billboard:"center",text:{text:"Mudtreader",color:"dark_green"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.24 ^2.3 positioned ^0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick3"],width:0.50f,height:0.04f,response:1b}

# Particle 5: Bloomstep
execute rotated ~ 0 positioned ^0.70 ^2.16 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP4"],billboard:"center",text:{text:"Bloomstep",color:"green"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.14 ^2.3 positioned ^0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick4"],width:0.50f,height:0.04f,response:1b}

# === AURA ZONE (RIGHT ^-0.55) — Particles 6-10 ===

# Zone label: Aura
execute rotated ~ 0 positioned ^-1.10 ^2.56 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"[Aura]",color:"yellow"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# Particle 6: Blossom
execute rotated ~ 0 positioned ^-0.70 ^2.56 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP5"],billboard:"center",text:{text:"Blossom",color:"light_purple"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.54 ^2.3 positioned ^-0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick5"],width:0.50f,height:0.04f,response:1b}

# Particle 7: Super Hot
execute rotated ~ 0 positioned ^-0.70 ^2.46 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP6"],billboard:"center",text:{text:"Super Hot",color:"red"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.44 ^2.3 positioned ^-0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick6"],width:0.50f,height:0.04f,response:1b}

# Particle 8: Stardust
execute rotated ~ 0 positioned ^-0.70 ^2.36 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP7"],billboard:"center",text:{text:"Stardust",color:"white"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.34 ^2.3 positioned ^-0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick7"],width:0.50f,height:0.04f,response:1b}

# Particle 9: Cauldron
execute rotated ~ 0 positioned ^-0.70 ^2.26 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP8"],billboard:"center",text:{text:"Cauldron",color:"dark_purple"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.24 ^2.3 positioned ^-0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick8"],width:0.50f,height:0.04f,response:1b}

# Particle 10: Heartbeat
execute rotated ~ 0 positioned ^-0.70 ^2.16 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP9"],billboard:"center",text:{text:"Heartbeat",color:"red"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.14 ^2.3 positioned ^-0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick9"],width:0.50f,height:0.04f,response:1b}

# === DIVIDER ===
execute rotated ~ 0 positioned ^ ^2.06 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# === HEAD ZONE (LEFT ^0.55) — Particles 11-14 ===

# Zone label: Head
execute rotated ~ 0 positioned ^1.10 ^1.96 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"[Head]",color:"gold"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# Particle 11: Halo
execute rotated ~ 0 positioned ^0.70 ^1.96 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP10"],billboard:"center",text:{text:"Halo",color:"yellow"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^1.94 ^2.3 positioned ^0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick10"],width:0.50f,height:0.04f,response:1b}

# Particle 12: Storm Crown
execute rotated ~ 0 positioned ^0.70 ^1.86 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP11"],billboard:"center",text:{text:"Storm Crown",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^1.84 ^2.3 positioned ^0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick11"],width:0.50f,height:0.04f,response:1b}

# Particle 13: Dripping Honey
execute rotated ~ 0 positioned ^0.70 ^1.76 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP12"],billboard:"center",text:{text:"Dripping Honey",color:"gold"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^1.74 ^2.3 positioned ^0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick12"],width:0.50f,height:0.04f,response:1b}

# Particle 14: Inkcloud
execute rotated ~ 0 positioned ^0.70 ^1.66 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP13"],billboard:"center",text:{text:"Inkcloud",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^1.64 ^2.3 positioned ^0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick13"],width:0.50f,height:0.04f,response:1b}

# === AMBIENT ZONE (RIGHT ^-0.55) — Particles 15-18 ===

# Zone label: Ambient
execute rotated ~ 0 positioned ^-1.10 ^1.96 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"[Ambient]",color:"dark_aqua"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# Particle 15: Fireflies
execute rotated ~ 0 positioned ^-0.70 ^1.96 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP14"],billboard:"center",text:{text:"Fireflies",color:"yellow"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^1.94 ^2.3 positioned ^-0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick14"],width:0.50f,height:0.04f,response:1b}

# Particle 16: Spore Cloud
execute rotated ~ 0 positioned ^-0.70 ^1.86 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP15"],billboard:"center",text:{text:"Spore Cloud",color:"green"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^1.84 ^2.3 positioned ^-0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick15"],width:0.50f,height:0.04f,response:1b}

# Particle 17: Void Whispers
execute rotated ~ 0 positioned ^-0.70 ^1.76 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP16"],billboard:"center",text:{text:"Void Whispers",color:"dark_blue"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^1.74 ^2.3 positioned ^-0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick16"],width:0.50f,height:0.04f,response:1b}

# Particle 18: Ashfall
execute rotated ~ 0 positioned ^-0.70 ^1.66 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP17"],billboard:"center",text:{text:"Ashfall",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^1.64 ^2.3 positioned ^-0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick17"],width:0.50f,height:0.04f,response:1b}

# === SPECIAL ===

# Special label
execute rotated ~ 0 positioned ^ ^1.52 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"\u2726 Special",color:"#E0B0FF"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.189f,0.189f,0.189f]}}

# Particle 19: Ethereal Aura
execute rotated ~ 0 positioned ^-0.70 ^1.52 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP18"],billboard:"center",text:{text:"Ethereal Aura",color:"#E8A0F0"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^ ^1.5 ^2.3 positioned ^-0.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick18"],width:0.50f,height:0.04f,response:1b}

# Refresh displays with current data
function evercraft:advantage/gui/refresh_crate_cosmetics
