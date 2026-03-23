# Tab 2: Buddy — Open
# @s = player, rotation context set via facing entity anchor from caller
# Shows best buddy stats at top, buddy list below

# #Search already set by caller (click_hub) — do not overwrite

# Title for this tab (use rotated ~ 0 — rotation context flows from caller)
execute rotated ~ 0 positioned ^ ^2.45 ^2.26 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["bd.buddy_content","companion.menuelement"],billboard:"center",text:{text:"Your Buddies",color:"#FFD700",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}
scoreboard players operation @e[type=text_display,tag=bd.buddy_content,distance=..5] companion.id = #Search companion.id

# Best Buddy section (NO at @s — let rotation flow through)
execute if score @s ec.bd_best_type matches 1.. run function evercraft:buddy/gui/tab_buddy/show_best_buddy
execute unless score @s ec.bd_best_type matches 1.. run function evercraft:buddy/gui/tab_buddy/show_no_best

# Best buddy equipment buttons
execute if score @s ec.bd_best_type matches 1.. run function evercraft:buddy/gui/tab_buddy/spawn_equip_buttons

# Current buddy stats
execute if score @s ec.bd_type_id matches 1.. run function evercraft:buddy/gui/tab_buddy/show_buddy_stats
execute unless score @s ec.bd_type_id matches 1.. run function evercraft:buddy/gui/tab_buddy/show_no_buddy

# Pack Mule button (tier 3+)
execute if score @s ec.bd_tier matches 3.. run function evercraft:buddy/gui/tab_buddy/spawn_mule_button

# Promote button (if Spiritbound and no best buddy yet)
execute if score @s ec.bd_tier matches 6 unless score @s ec.bd_best_type matches 1.. run function evercraft:buddy/gui/tab_buddy/spawn_promote_button
