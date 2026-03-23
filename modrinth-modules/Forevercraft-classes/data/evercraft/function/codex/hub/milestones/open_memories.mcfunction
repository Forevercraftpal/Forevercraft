# Milestones — Open Memories (renamed Scrapbook)
# Kills overview, spawns scrapbook content
# Run as the player

# Kill overview content
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.MsOverview,distance=..5]

# Set page 15 (scrapbook)
scoreboard players set @s adv.gui_page 15

# Update title
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Memories \u2726","color":"#FF8C00","bold":true}

# Spawn [← Milestones] back button (same position as realm detail pages)
execute rotated ~ 0 positioned ^ ^1.05 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent"],billboard:"center",text:{"text":"[\u2190 Milestones]","color":"#E0B0FF"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^0.99 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsBackToOvClick"],width:0.5f,height:0.08f,response:1b}

# Spawn scrapbook content (reuse existing TJ scrapbook spawn)
function evercraft:codex/hub/journal/spawn_scrapbook

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
