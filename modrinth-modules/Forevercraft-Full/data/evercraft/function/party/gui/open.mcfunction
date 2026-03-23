# Party Section — Open (Section 7 Entry)
# Called from enter_section_inner when entering section 7
# Shell already exists — spawn nav arrows + page 1 content
# Run as the player, at player, facing the anchor

# Navigation arrows (for page switching: Party Management / Party Bonds)
# Left arrow (^1.55 = screen LEFT)
execute rotated ~ 0 positioned ^1.70 ^2.15 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.NavLeftText"],billboard:"center",text:{text:"[ < ]",color:"gray",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}
execute rotated ~ 0 positioned ^ ^2.1 ^2.3 positioned ^1.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.NavLeftClick"],width:0.35f,height:0.07f,response:1b}

# Right arrow (^-1.55 = screen RIGHT)
execute rotated ~ 0 positioned ^-1.70 ^2.15 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.NavRightText"],billboard:"center",text:{text:"[ > ]",color:"gray",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}
execute rotated ~ 0 positioned ^ ^2.1 ^2.3 positioned ^-1.70 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.NavRightClick"],width:0.35f,height:0.07f,response:1b}

# Cache current party state for stale detection (per-player)
scoreboard players operation @s ec.pty_csz = @s ec.party_size
scoreboard players operation @s ec.pty_crl = @s ec.party_role

# Spawn page 1 content (party management)
function evercraft:party/gui/spawn_management
