# Craftforever Codex — Back to hub (inner)
# Run as player

# Kill section content via anchor
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run kill @e[tag=CF.SectionContent,distance=..5]

# Reset state
scoreboard players set @s ec.cf_codex_section 0
scoreboard players set @s ec.cf_codex_page 1

# Update title back to hub
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 The Craftforever Codex \u2726",color:"#8BC34A",bold:true}

# Respawn hub buttons
function evercraft:craftforever/codex/hub/spawn_hub

# Set cooldown and play sound
scoreboard players set @s ec.cf_codex_cd 3
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
