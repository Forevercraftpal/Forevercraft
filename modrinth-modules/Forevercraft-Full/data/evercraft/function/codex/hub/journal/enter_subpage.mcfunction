# Journal — Enter Sub-Page (Macro)
# Macro arg: page (2-8, 15)
# Run as the player, at player, facing the anchor

# Set page
$scoreboard players set @s adv.gui_page $(page)

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill overview content
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.JnOverview,distance=..5]

# Spawn [← Overview] button
execute rotated ~ 0 positioned ^ ^1.37 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnBackOvText"],billboard:"center",text:{text:"[\u2190 Overview]",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.31 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnBackOvClick"],width:0.5f,height:0.08f,response:1b}

# Update title per sub-page
execute if score @s adv.gui_page matches 2 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Biomes \u2726",color:"dark_green",bold:true}
execute if score @s adv.gui_page matches 3 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Structures \u2726",color:"gold",bold:true}
execute if score @s adv.gui_page matches 4 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Villages \u2726",color:"green",bold:true}
execute if score @s adv.gui_page matches 5 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Secrets \u2726",color:"light_purple",bold:true}
execute if score @s adv.gui_page matches 6 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Region Bonuses \u2726",color:"yellow",bold:true}
execute if score @s adv.gui_page matches 7 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Biome Affinity \u2726",color:"#4CAF50",bold:true}
execute if score @s adv.gui_page matches 8 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Realm Milestones \u2726",color:"#E0B0FF",bold:true}
execute if score @s adv.gui_page matches 15 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Pet Scrapbook \u2726",color:"#FF8C00",bold:true}

# Spawn sub-page content
execute if score @s adv.gui_page matches 2 run function evercraft:codex/hub/journal/spawn_biomes
execute if score @s adv.gui_page matches 3 run function evercraft:codex/hub/journal/spawn_structures
execute if score @s adv.gui_page matches 4 run function evercraft:codex/hub/journal/spawn_villages
execute if score @s adv.gui_page matches 5 run function evercraft:codex/hub/journal/spawn_secrets
execute if score @s adv.gui_page matches 6 run function evercraft:codex/hub/journal/spawn_bonuses
execute if score @s adv.gui_page matches 7 run function evercraft:codex/hub/journal/spawn_affinity
execute if score @s adv.gui_page matches 8 run function evercraft:codex/hub/journal/spawn_milestones
execute if score @s adv.gui_page matches 15 run function evercraft:codex/hub/journal/spawn_scrapbook

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
