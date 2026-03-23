# Difficulty button for help menu — spawns text_display + interaction
# Run positioned at the button location

summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpDiffBtn"],billboard:"center",text:{text:"\u2726",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.351f,0.351f,0.351f]}}
execute positioned ~ ~-0.02 ~0.02 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClickDiff"],width:0.20f,height:0.04f,response:1b}
