# Recipes — Open Recipe Book sub-page (runs as player)

scoreboard players operation #cf_gui_stamp ec.temp = @s ec.cf_gui_session
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s run kill @e[tag=CF.SectionContent,distance=..5]

function evercraft:craftforever/codex/hub/spawn_back_button
scoreboard players set @s ec.cf_codex_page 3

execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Recipe Book \u2726",color:"#FFB74D",bold:true}

function evercraft:craftforever/codex/hub/recipes/spawn

scoreboard players set @s ec.cf_codex_cd 3
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
