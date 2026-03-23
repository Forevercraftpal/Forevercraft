# Milestone Detail — Back to Milestones Overview
# Run as the player, at player, facing anchor

scoreboard players set @s adv.gui_page 8

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill detail content
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.JnMsDetail,distance=..5]

# Restore milestones title
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Realm Milestones \u2726",color:"#E0B0FF",bold:true}

# Respawn [← Overview] button (was killed when entering detail page)
execute rotated ~ 0 positioned ^ ^1.37 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnBackOvText"],billboard:"center",text:{text:"[\u2190 Overview]",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.31 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnBackOvClick"],width:0.5f,height:0.08f,response:1b}

# Respawn milestones overview
function evercraft:codex/hub/journal/spawn_milestones

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
