# Party Management — No Party Layout (role = 0)
# Run as the player, at player, facing the anchor

# Status text
execute rotated ~ 0 positioned ^ ^2.57 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PtyStatus"],billboard:"center",text:{text:"You are not in a party.",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Create Party button
execute rotated ~ 0 positioned ^ ^2.29 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage"],billboard:"center",text:{text:"[ Create Party ]",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^ ^2.24 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PtyClickCreate"],width:0.7f,height:0.07f,response:1b}

# Description
execute rotated ~ 0 positioned ^ ^2.17 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage"],billboard:"center",text:{text:"Start a new party and invite nearby players",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# DR Leaderboard
execute rotated ~ 0 positioned ^ ^1.89 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage"],billboard:"center",text:{text:"[ DR Leaderboard ]",color:"light_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.84 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PtyClickDRBoard"],width:0.7f,height:0.07f,response:1b}

# Hint: mention the Bonds page
execute rotated ~ 0 positioned ^ ^1.65 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage"],billboard:"center",text:[{text:"Use ",color:"dark_gray"},{text:"[ > ]",color:"gray",bold:true},{text:" to view Party Bonds",color:"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
