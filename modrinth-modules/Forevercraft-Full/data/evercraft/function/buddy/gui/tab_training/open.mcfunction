# Tab 4: Training — Open
# @s = player, position context set
# Shows mount training bond info, tier, challenges, recall button

# #Search already set by caller (click_hub) — do not overwrite

# Title
execute rotated ~ 0 positioned ^ ^2.45 ^2.26 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["bd.training_content","companion.menuelement"],billboard:"center",text:{text:"Mount Training",color:"#8B4513",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}

# Check if player has a bonded mount
execute if score @s ec.mt_tier matches 1.. run function evercraft:buddy/gui/tab_training/show_bond_info
execute unless score @s ec.mt_tier matches 1.. run function evercraft:buddy/gui/tab_training/show_no_bond

scoreboard players operation @e[type=text_display,tag=bd.training_content,distance=..5] companion.id = #Search companion.id
scoreboard players operation @e[type=interaction,tag=bd.training_content,distance=..5] companion.id = #Search companion.id
