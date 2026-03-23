# Milestones — Open Personal Inner (facing anchor)
# Run as player, facing the anchor marker

# Spawn back-to-overview button
execute rotated ~ 0 positioned ^0.65 ^0.85 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent"],billboard:"center",text:{text:"< Back to Milestones",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^0.65 ^0.82 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsBackToOvClick"],width:0.5f,height:0.05f,response:1b}

# Spawn personal claims content
function evercraft:ecodex/sections/personal_claims
