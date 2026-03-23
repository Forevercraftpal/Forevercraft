# Party Bonds — Spawn Page 2 (Combo Discovery)
# Shows party status and all 9 combo abilities with unlock status
# All entities tagged Adv.MenuElement + Adv.SectionContent + Adv.PartyPage + Adv.PbContent
# Run as the player, at player, facing anchor

# === Party Status (dynamic — updated by refresh) ===
execute rotated ~ 0 positioned ^ ^2.78 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PbContent","Adv.PbStatus"],billboard:"center",text:{text:"Loading...",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}

# === PASSIVE SYNERGIES Header ===
execute rotated ~ 0 positioned ^ ^2.62 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PbContent"],billboard:"center",text:{text:"Passive Synergies",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.351f,0.351f,0.351f]}}

# Pack Tactics — bit 7 (Beastmaster x2)
execute rotated ~ 0 positioned ^ ^2.47 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PbContent","Adv.PbCombo7"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Tidal Network — bit 8 (Fisher + Explorer)
execute rotated ~ 0 positioned ^ ^2.32 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PbContent","Adv.PbCombo8"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# === TRIGGERED SYNERGIES Header ===
execute rotated ~ 0 positioned ^ ^2.14 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PbContent"],billboard:"center",text:{text:"Triggered Synergies",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.351f,0.351f,0.351f]}}

# Marked for Death — bit 0 (Stealth + Victorian)
execute rotated ~ 0 positioned ^ ^1.99 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PbContent","Adv.PbCombo0"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Shield Wall — bit 1 (Vitality + Evasion)
execute rotated ~ 0 positioned ^ ^1.84 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PbContent","Adv.PbCombo1"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Blitz — bit 2 (Agility + Victorian)
execute rotated ~ 0 positioned ^ ^1.69 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PbContent","Adv.PbCombo2"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Field Medic — bit 3 (Vitality + Taskmaster)
execute rotated ~ 0 positioned ^ ^1.54 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PbContent","Adv.PbCombo3"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Rally Cry — bit 4 (Explorer + Any)
execute rotated ~ 0 positioned ^ ^1.39 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PbContent","Adv.PbCombo4"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Shared Fortunes — bit 5 (Mining + Gathering)
execute rotated ~ 0 positioned ^ ^1.24 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PbContent","Adv.PbCombo5"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Forge Bond — bit 6 (Blacksmith + Dexterity)
execute rotated ~ 0 positioned ^ ^1.09 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PbContent","Adv.PbCombo6"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Refresh with current unlock data
function evercraft:party/gui/refresh_bonds
