# Party Management — Leader Layout (role = 1)
# Run as the player, at player, facing the anchor

# Status: "Party Leader — X/4"
execute rotated ~ 0 positioned ^ ^2.57 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PtyStatus"],billboard:"center",text:{text:"Loading...",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Members header
execute rotated ~ 0 positioned ^ ^2.37 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage"],billboard:"center",text:{text:"Members",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}

# Leader slot (self)
execute rotated ~ 0 positioned ^ ^2.23 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PtyLeader"],billboard:"center",text:{text:"...",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}

# Member slots (up to 3 other members)
execute rotated ~ 0 positioned ^ ^2.11 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PtyMemberList"],billboard:"center",text:{text:"  ---",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}

# === Action Buttons ===

# Invite Nearby
execute rotated ~ 0 positioned ^ ^1.75 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage"],billboard:"center",text:{text:"[ Invite Nearby ]",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.72 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PtyClickInvite"],width:0.7f,height:0.05f,response:1b}

# Party Ping
execute rotated ~ 0 positioned ^ ^1.6 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage"],billboard:"center",text:{text:"[ Party Ping ]",color:"aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.57 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PtyClickPing"],width:0.7f,height:0.05f,response:1b}

# Disband Party
execute rotated ~ 0 positioned ^ ^1.45 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage"],billboard:"center",text:{text:"[ Disband Party ]",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.42 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PtyClickDisband"],width:0.7f,height:0.05f,response:1b}

# DR Leaderboard
execute rotated ~ 0 positioned ^ ^1.3 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage"],billboard:"center",text:{text:"[ DR Leaderboard ]",color:"light_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.27 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PtyClickDRBoard"],width:0.7f,height:0.05f,response:1b}

# Update status text and member names via macro
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id
function evercraft:party/gui/refresh_status with storage evercraft:party temp
function evercraft:party/gui/refresh_members with storage evercraft:party temp
