# CF Milestones — Open Guild detail page (runs as player)

# Kill CF section content
scoreboard players operation #cf_gui_stamp ec.temp = @s ec.cf_gui_session
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s run kill @e[tag=CF.SectionContent,distance=..5]

# Spawn back button
function evercraft:craftforever/codex/hub/spawn_back_button

# Set page (11 = Guild, matching FC codex)
scoreboard players set @s ec.cf_codex_page 11

# Update title
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Guild \u2726","color":"dark_red","bold":true}

# Spawn FC milestone detail page (creates entities with Adv.* tags)
function evercraft:codex/hub/journal/spawn_ms_guild

# Dual-tag: add CF tags so CF tick can manage these entities
execute as @e[tag=Adv.MenuElement,tag=!CF.MenuElement,distance=..5] run tag @s add CF.MenuElement
execute as @e[tag=Adv.SectionContent,tag=!CF.SectionContent,distance=..5] run tag @s add CF.SectionContent

# Stamp FC entities with player's CF session as adv.gui_session (for claim compat)
execute as @e[tag=Adv.MenuElement,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #cf_gui_stamp ec.temp

scoreboard players set @s ec.cf_codex_cd 3
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
