# CF Milestones — Return to overview from detail page (runs as player)

# Kill all section content (both CF and FC tagged, via dual-tagging)
scoreboard players operation #cf_gui_stamp ec.temp = @s ec.cf_gui_session
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s run kill @e[tag=CF.SectionContent,distance=..5]
# Also kill any Adv.SectionContent that wasn't dual-tagged
execute as @e[tag=Adv.SectionContent,distance=..5] run kill @s

# Reset page to overview
scoreboard players set @s ec.cf_codex_page 1

# Restore title
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Milestones \u2726","color":"#E0B0FF","bold":true}

# Respawn overview + back button
function evercraft:craftforever/codex/hub/cf_milestones/spawn
function evercraft:craftforever/codex/hub/spawn_back_button

scoreboard players set @s ec.cf_codex_cd 3
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
