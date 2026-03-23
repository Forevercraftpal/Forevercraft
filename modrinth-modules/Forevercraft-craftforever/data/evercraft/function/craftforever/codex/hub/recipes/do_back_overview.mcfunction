# Recipes — Return to overview page (runs as player)

# Kill section content via anchor
scoreboard players operation #cf_gui_stamp ec.temp = @s ec.cf_gui_session
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s run kill @e[tag=CF.SectionContent,distance=..5]

function evercraft:craftforever/codex/hub/spawn_back_button

# Reset page to overview
scoreboard players set @s ec.cf_codex_page 1

# Restore Recipes title
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Recipes \u2726","color":"#FFB74D","bold":true}

# Re-spawn overview
function evercraft:craftforever/codex/hub/recipes/spawn_overview

# Stamp newly spawned entities
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s as @e[tag=CF.MenuElement,distance=..5] unless score @s ec.cf_gui_session matches 1.. run scoreboard players operation @s ec.cf_gui_session = #cf_gui_stamp ec.temp

# Cooldown + sound
scoreboard players set @s ec.cf_codex_cd 3
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
