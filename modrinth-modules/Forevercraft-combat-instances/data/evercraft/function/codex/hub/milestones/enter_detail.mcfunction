# Milestones — Enter Detail Page (Macro)
# Args: {page:9-14} for realm milestone categories
# Run as the player

# Kill overview content
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.MsOverview,distance=..5]

# Set page
$scoreboard players set @s adv.gui_page $(page)

# Update title per category
execute if score @s adv.gui_page matches 9 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Origins \u2726","color":"yellow","bold":true}
execute if score @s adv.gui_page matches 10 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Social \u2726","color":"#FF69B4","bold":true}
execute if score @s adv.gui_page matches 11 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Guild & Warfare \u2726","color":"dark_red","bold":true}
execute if score @s adv.gui_page matches 12 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Adventure \u2726","color":"dark_aqua","bold":true}
execute if score @s adv.gui_page matches 13 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Combat \u2726","color":"red","bold":true}
execute if score @s adv.gui_page matches 14 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Mastery \u2726","color":"light_purple","bold":true}

# Spawn [← Milestones] back button
execute rotated ~ 0 positioned ^ ^1.05 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnMsDetail","Adv.JnMsBackText"],billboard:"center",text:{"text":"[\u2190 Milestones]","color":"#E0B0FF"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^0.99 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnMsDetail","Adv.JnMsBackClick"],width:0.5f,height:0.08f,response:1b}

# Spawn title click interaction (claims all for current category)
execute rotated ~ 0 positioned ^ ^2.96 ^2.32 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnMsDetail","Adv.JnMsTitleClick"],width:0.6f,height:0.08f,response:1b}

# Spawn detail content (face anchor so content aligns with panel)
execute if score @s adv.gui_page matches 9 at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/hub/journal/spawn_ms_origins
execute if score @s adv.gui_page matches 10 at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/hub/journal/spawn_ms_social
execute if score @s adv.gui_page matches 11 at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/hub/journal/spawn_ms_guild
execute if score @s adv.gui_page matches 12 at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/hub/journal/spawn_ms_adventure
execute if score @s adv.gui_page matches 13 at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/hub/journal/spawn_ms_combat
execute if score @s adv.gui_page matches 14 at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/hub/journal/spawn_ms_mastery

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
