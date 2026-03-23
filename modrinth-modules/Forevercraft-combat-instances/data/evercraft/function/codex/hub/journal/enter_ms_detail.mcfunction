# Milestone Detail — Enter Detail Page (Macro)
# Macro arg: page (9=Origins, 10=Social, 11=Guild, 12=Adventure, 13=Combat, 14=Mastery)
# Run as the player, at player, facing anchor

$scoreboard players set @s adv.gui_page $(page)

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill milestones overview content AND the back-to-overview button (overlaps with back-to-milestones)
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.JnMsOv,distance=..5]
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.JnBackOvText,distance=..5]
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.JnBackOvClick,distance=..5]

# Spawn [← Milestones] button
execute rotated ~ 0 positioned ^ ^1.37 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsDetail","Adv.JnMsBackText"],billboard:"center",text:{text:"[\u2190 Milestones]",color:"#E0B0FF"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.31 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsDetail","Adv.JnMsBackClick"],width:0.5f,height:0.08f,response:1b}

# Update title per category
execute if score @s adv.gui_page matches 9 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Origins \u2726",color:"yellow",bold:true}
execute if score @s adv.gui_page matches 10 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Social \u2726",color:"#FF69B4",bold:true}
execute if score @s adv.gui_page matches 11 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Guild & Warfare \u2726",color:"dark_red",bold:true}
execute if score @s adv.gui_page matches 12 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Adventure \u2726",color:"dark_aqua",bold:true}
execute if score @s adv.gui_page matches 13 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Combat \u2726",color:"red",bold:true}
execute if score @s adv.gui_page matches 14 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Mastery \u2726",color:"light_purple",bold:true}

# Spawn title click interaction (claims all for current category)
execute rotated ~ 0 positioned ^ ^2.96 ^2.32 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnMsDetail","Adv.JnMsTitleClick"],width:0.6f,height:0.08f,response:1b}

# Spawn detail content
execute if score @s adv.gui_page matches 9 run function evercraft:codex/hub/journal/spawn_ms_origins
execute if score @s adv.gui_page matches 10 run function evercraft:codex/hub/journal/spawn_ms_social
execute if score @s adv.gui_page matches 11 run function evercraft:codex/hub/journal/spawn_ms_guild
execute if score @s adv.gui_page matches 12 run function evercraft:codex/hub/journal/spawn_ms_adventure
execute if score @s adv.gui_page matches 13 run function evercraft:codex/hub/journal/spawn_ms_combat
execute if score @s adv.gui_page matches 14 run function evercraft:codex/hub/journal/spawn_ms_mastery

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
