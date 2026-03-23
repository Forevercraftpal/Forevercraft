# CF Milestones — Open Memories (Scrapbook) page (runs as player)

# Kill CF section content
scoreboard players operation #cf_gui_stamp ec.temp = @s ec.cf_gui_session
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s run kill @e[tag=CF.SectionContent,distance=..5]

# Spawn back button
function evercraft:craftforever/codex/hub/spawn_back_button

# Set page 15 (matching FC codex memories/scrapbook page)
scoreboard players set @s ec.cf_codex_page 15

# Update title
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Memories \u2726","color":"#FF8C00","bold":true}

# Spawn FC scrapbook content (placeholder - just info text for now)
execute rotated ~ 0 positioned ^ ^2.20 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"Companion Memories","color":"#FF8C00","bold":true},{"text":"\n\n","color":"gray"},{"text":"Bond with your companions to\n","color":"gray"},{"text":"unlock special memories together!","color":"gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}

scoreboard players set @s ec.cf_codex_cd 3
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
