# === ETERNAL CODEX — BESTIARY CLAIMS (Section 13) ===
# Summary view with Claim All button
# Run as: player, at player

# Title row
execute rotated ~ 0 positioned ^ ^2.6 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent"],billboard:"center",text:{text:"Bestiary Stage Rewards",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}}

# Description
execute rotated ~ 0 positioned ^ ^2.42 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent"],billboard:"center",text:[{"text":"Kill monsters to earn mastery stages.\n","color":"gray"},{"text":"Each stage unlocks a crate reward.\n","color":"gray"},{"text":"Claim individually from the Bestiary GUI,\n","color":"gray"},{"text":"or claim all pending rewards at once below.","color":"gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}

# Unclaimed count display (updated by refresh)
execute rotated ~ 0 positioned ^ ^2.1 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Ec.BstCount"],billboard:"center",text:{text:"...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}

# Claim All button (text_display + interaction)
execute rotated ~ 0 positioned ^ ^1.9 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Ec.BstClaimBtn"],billboard:"center",text:{text:"...",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.88 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Ec.BstClaimClick"],width:0.7f,height:0.06f,response:1b}

# Initial refresh
function evercraft:ecodex/sections/bestiary_claims/refresh
