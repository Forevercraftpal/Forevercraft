# Codex Hub — Spawn Back Button
# Spawns [← Menu] button at the very bottom of the panel
# Shared across all sections — returns to hub when clicked
# Positioned below section-specific back buttons to avoid overlap
# Run as the player, facing the anchor
# Hidden in Wishing Star mode (no navigating back — close only)

execute unless entity @s[tag=ec.wishing_star_active] unless entity @s[tag=ec.lucid_claim_active] rotated ~ 0 positioned ^ ^0.92 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.BackBtnText"],billboard:"center",text:{text:"[ \u2190 Menu ]",color:"yellow",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute unless entity @s[tag=ec.wishing_star_active] unless entity @s[tag=ec.lucid_claim_active] rotated ~ 0 positioned ^ ^0.88 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.BackBtnClick"],width:0.4f,height:0.06f,response:1b}
