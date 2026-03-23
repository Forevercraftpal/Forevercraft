# Codex Guild — Exit and Return to Hub
# Called when guild menu close triggers while in codex mode (manage actions, etc.)
# Handles guild cleanup + codex navigation back to hub in one operation
# Run as the player

# Guild cleanup (removes tags, kills guild entities)
function evercraft:codex/guild/exit

# Navigate back to hub (mirrors back_to_hub logic, minus the guild exit which already ran)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill all section content via anchor (back button, etc.)
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.SectionContent,distance=..5]

# Reset to hub
scoreboard players set @s adv.gui_section 0
scoreboard players set @s adv.gui_page 1

# Update title back to hub via anchor
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 The Forevercraft Codex \u2726",color:"gold",bold:true}

# Respawn hub buttons (face anchor for correct positioning)
execute at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/hub/spawn_hub

# Click cooldown — 3-tick score prevents held right-click from triggering newly spawned interaction entities
scoreboard players set @s adv.gui_cd 3

# Play sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
