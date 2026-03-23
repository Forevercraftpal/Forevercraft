# Showcase — Spawn equipment row for another player (macro)
# $(target_cid)
# Layout: [pick] [weapon] [helm] [chest] [legs] [boots] [offhand] [shovel]

# Pickaxe at ^0.60 (from target's hotbar)
execute rotated ~ 0 positioned ^0.60 ^2 ^1.77 run summon item_display ~ ~ ~ {brightness:{block:15,sky:15},Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_eq_new","ec.sc_eq_6"],billboard:"center",item:{id:"air",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.09f,0.09f,0.09f]}}
$execute as @a[scores={companion.id=$(target_cid)},limit=1] run function evercraft:codex/friends/showcase/detect_tool
tag @e[tag=ec.sc_eq_new] remove ec.sc_eq_new

# Weapon at ^0.43 (from target's hotbar)
execute rotated ~ 0 positioned ^0.43 ^2 ^1.77 run summon item_display ~ ~ ~ {brightness:{block:15,sky:15},Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_eq_new","ec.sc_eq_0"],billboard:"center",item:{id:"air",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.09f,0.09f,0.09f]}}
$execute as @a[scores={companion.id=$(target_cid)},limit=1] run function evercraft:codex/friends/showcase/detect_weapon
tag @e[tag=ec.sc_eq_new] remove ec.sc_eq_new

# Helmet at ^0.26
execute rotated ~ 0 positioned ^0.26 ^2 ^1.77 run summon item_display ~ ~ ~ {brightness:{block:15,sky:15},Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_eq_new","ec.sc_eq_1"],billboard:"center",item:{id:"air",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.09f,0.09f,0.09f]}}
$data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @a[scores={companion.id=$(target_cid)},limit=1] equipment.head
tag @e[tag=ec.sc_eq_new] remove ec.sc_eq_new

# Chestplate at ^0.09
execute rotated ~ 0 positioned ^0.09 ^2 ^1.77 run summon item_display ~ ~ ~ {brightness:{block:15,sky:15},Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_eq_new","ec.sc_eq_2"],billboard:"center",item:{id:"air",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.07f,0.07f,0.07f]}}
$data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @a[scores={companion.id=$(target_cid)},limit=1] equipment.chest
tag @e[tag=ec.sc_eq_new] remove ec.sc_eq_new

# Leggings at ^-0.09
execute rotated ~ 0 positioned ^-0.09 ^2 ^1.77 run summon item_display ~ ~ ~ {brightness:{block:15,sky:15},Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_eq_new","ec.sc_eq_3"],billboard:"center",item:{id:"air",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.09f,0.09f,0.09f]}}
$data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @a[scores={companion.id=$(target_cid)},limit=1] equipment.legs
tag @e[tag=ec.sc_eq_new] remove ec.sc_eq_new

# Boots at ^-0.26
execute rotated ~ 0 positioned ^-0.26 ^2 ^1.77 run summon item_display ~ ~ ~ {brightness:{block:15,sky:15},Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_eq_new","ec.sc_eq_4"],billboard:"center",item:{id:"air",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.09f,0.09f,0.09f]}}
$data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @a[scores={companion.id=$(target_cid)},limit=1] equipment.feet
tag @e[tag=ec.sc_eq_new] remove ec.sc_eq_new

# Offhand at ^-0.43
execute rotated ~ 0 positioned ^-0.43 ^2 ^1.77 run summon item_display ~ ~ ~ {brightness:{block:15,sky:15},Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_eq_new","ec.sc_eq_5"],billboard:"center",item:{id:"air",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.09f,0.09f,0.09f]}}
$data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @a[scores={companion.id=$(target_cid)},limit=1] equipment.offhand
tag @e[tag=ec.sc_eq_new] remove ec.sc_eq_new

# Shovel at ^-0.60 (from target's hotbar)
execute rotated ~ 0 positioned ^-0.60 ^2 ^1.77 run summon item_display ~ ~ ~ {brightness:{block:15,sky:15},Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_eq_new","ec.sc_eq_7"],billboard:"center",item:{id:"air",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.09f,0.09f,0.09f]}}
$execute as @a[scores={companion.id=$(target_cid)},limit=1] run function evercraft:codex/friends/showcase/detect_shovel
tag @e[tag=ec.sc_eq_new] remove ec.sc_eq_new

# Interaction entities behind equipment for click-to-inspect
execute rotated ~ 0 positioned ^0.60 ^2.02 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_eq_click","ec.sc_eq_click_6"],width:0.12f,height:0.07f,response:1b}
execute rotated ~ 0 positioned ^0.43 ^2.02 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_eq_click","ec.sc_eq_click_0"],width:0.12f,height:0.07f,response:1b}
execute rotated ~ 0 positioned ^0.26 ^2.02 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_eq_click","ec.sc_eq_click_1"],width:0.12f,height:0.07f,response:1b}
execute rotated ~ 0 positioned ^0.09 ^2.02 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_eq_click","ec.sc_eq_click_2"],width:0.12f,height:0.07f,response:1b}
execute rotated ~ 0 positioned ^-0.09 ^2.02 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_eq_click","ec.sc_eq_click_3"],width:0.12f,height:0.07f,response:1b}
execute rotated ~ 0 positioned ^-0.26 ^2.02 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_eq_click","ec.sc_eq_click_4"],width:0.12f,height:0.07f,response:1b}
execute rotated ~ 0 positioned ^-0.43 ^2.02 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_eq_click","ec.sc_eq_click_5"],width:0.12f,height:0.07f,response:1b}
execute rotated ~ 0 positioned ^-0.60 ^2.02 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_eq_click","ec.sc_eq_click_7"],width:0.12f,height:0.07f,response:1b}

# Hint text below equipment
execute rotated ~ 0 positioned ^ ^1.88 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el"],billboard:"center",text:{text:"Click an item to inspect",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.203f,0.203f,0.203f]}}
