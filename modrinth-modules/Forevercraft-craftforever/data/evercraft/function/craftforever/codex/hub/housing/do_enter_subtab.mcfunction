# Housing — Transition to sub-tab page (runs as player)
# Args: {page:N, title:"...", color:"...", spawn:"namespace:path"}

# Kill current section content via anchor
scoreboard players operation #cf_gui_stamp ec.temp = @s ec.cf_gui_session
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s run kill @e[tag=CF.SectionContent,distance=..5]

# Set page
$scoreboard players set @s ec.cf_codex_page $(page)

# Update title
$execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 $(title) \u2726","color":"$(color)","bold":true}

# Spawn sub-page content
$function $(spawn)

# Stamp newly spawned entities
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s as @e[tag=CF.MenuElement,distance=..5] unless score @s ec.cf_gui_session matches 1.. run scoreboard players operation @s ec.cf_gui_session = #cf_gui_stamp ec.temp
# Fallback stamp from player position
execute as @e[tag=CF.MenuElement,distance=..5] unless score @s ec.cf_gui_session matches 1.. run scoreboard players operation @s ec.cf_gui_session = #cf_gui_stamp ec.temp

# Cooldown + sound
scoreboard players set @s ec.cf_codex_cd 3
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
