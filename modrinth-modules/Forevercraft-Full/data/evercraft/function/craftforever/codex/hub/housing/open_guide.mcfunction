# Housing — Open Housing Guide sub-page (runs as player)
# Kill section content, set page 2, spawn guide content

scoreboard players operation #cf_gui_stamp ec.temp = @s ec.cf_gui_session
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s run kill @e[tag=CF.SectionContent,distance=..5]

function evercraft:craftforever/codex/hub/spawn_back_button
scoreboard players set @s ec.cf_codex_page 2

execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Housing Guide \u2726",color:"#66BB6A",bold:true}

function evercraft:craftforever/codex/hub/housing/spawn

scoreboard players set @s ec.cf_codex_cd 3
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
