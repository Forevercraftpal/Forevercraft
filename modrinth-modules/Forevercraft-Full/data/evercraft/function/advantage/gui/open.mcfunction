# Advantage Trees GUI — Open (Section 1 Entry)
# Now called FROM the codex hub when entering section 1
# Shell (anchor, background, title) already exists — only spawn nav arrows + page 1 content
# Run as the player, facing the anchor

# Navigation arrows (for page switching within advantage trees)
# Left arrow (^1.55 = screen LEFT in local coords where ^X = player's left)
execute rotated ~ 0 positioned ^1.55 ^2.15 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.NavLeftText"],billboard:"center",text:{text:"[ < ]",color:"gray",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}
execute rotated ~ 0 positioned ^ ^2.07 ^1.8 positioned ^1.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.NavLeftClick"],width:0.35f,height:0.1f,response:1b}

# Right arrow (^-1.55 = screen RIGHT in local coords)
execute rotated ~ 0 positioned ^-1.55 ^2.15 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.NavRightText"],billboard:"center",text:{text:"[ > ]",color:"gray",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}
execute rotated ~ 0 positioned ^ ^2.07 ^1.8 positioned ^-1.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.NavRightClick"],width:0.35f,height:0.1f,response:1b}

# Spawn page 1 content (13 trees + column headers)
function evercraft:advantage/gui/spawn_trees
