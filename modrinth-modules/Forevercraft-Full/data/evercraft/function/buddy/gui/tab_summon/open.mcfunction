# Tab 3: Summon — Open
# @s = player, position context set
# Shows list of all named tamed animals with summon buttons
# 10 per page, up to 10 pages

# #Search already set by caller (click_hub) — do not overwrite
scoreboard players set @s ec.bd_summon_pg 1

# Title
execute rotated ~ 0 positioned ^ ^2.45 ^2.26 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["bd.summon_content","companion.menuelement"],billboard:"center",text:{text:"Summon a Tamed Animal",color:"aqua",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}

# Summon limit info
execute store result storage evercraft:buddy temp.summons_used int 1 run scoreboard players get @s ec.bd_summon_ct
function evercraft:buddy/gui/tab_summon/render_info with storage evercraft:buddy temp

# Build list (scan for named tamed animals in loaded chunks)
function evercraft:buddy/gui/tab_summon/build_list

scoreboard players operation @e[type=text_display,tag=bd.summon_content,distance=..5] companion.id = #Search companion.id
scoreboard players operation @e[type=interaction,tag=bd.summon_content,distance=..5] companion.id = #Search companion.id
