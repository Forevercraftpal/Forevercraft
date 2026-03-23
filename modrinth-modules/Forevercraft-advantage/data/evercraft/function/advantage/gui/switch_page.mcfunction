# Advantage GUI — Switch Page (Section 1: Advantage Trees)
# Macro arg: operation ("add" = next page, "remove" = previous page)
# Kills current page content, updates gui_page, spawns new page content
# 2 pages: Page 1 = Trees, Page 2 = Prestige Abilities
# Run as/at the player

# Calculate new page: add 1 or remove 1, then wrap 1-2
$execute if score @s adv.gui_page matches 1.. run scoreboard players $(operation) @s adv.gui_page 1
execute if score @s adv.gui_page matches 0 run scoreboard players set @s adv.gui_page 2
execute if score @s adv.gui_page matches 3 run scoreboard players set @s adv.gui_page 1

# Kill respec overlay + page content via anchor
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..15] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.RespecOverlay,distance=..5]
tag @s remove Adv.RespecMode
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..15] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.Page1,distance=..5]
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..15] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.Page3,distance=..5]

# Update title text via anchor
execute if score @s adv.gui_page matches 1 as @e[type=marker,tag=Adv.MenuAnchor,distance=..15] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Advantage Trees \u2726",color:"gold",bold:true}
execute if score @s adv.gui_page matches 2 as @e[type=marker,tag=Adv.MenuAnchor,distance=..15] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Prestige Abilities \u2726",color:"light_purple",bold:true}

# Spawn new page content
execute if score @s adv.gui_page matches 1 run function evercraft:advantage/gui/spawn_trees
execute if score @s adv.gui_page matches 2 run function evercraft:advantage/gui/spawn_page3

# Page switch sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
