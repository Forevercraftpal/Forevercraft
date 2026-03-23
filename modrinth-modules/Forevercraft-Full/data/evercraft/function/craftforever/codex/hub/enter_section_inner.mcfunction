# Craftforever Codex — Section transition inner
# Run as player, facing anchor

# Set section and reset page
$scoreboard players set @s ec.cf_codex_section $(section)
scoreboard players set @s ec.cf_codex_page 1

# Kill hub content via anchor (distance=..5 to handle player movement after opening)
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run kill @e[tag=CF.HubContent,distance=..5]

# Kill previous section content
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run kill @e[tag=CF.SectionContent,distance=..5]

# Spawn back button
function evercraft:craftforever/codex/hub/spawn_back_button

# Update title
execute if score @s ec.cf_codex_section matches 1 as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Almanac \u2726","color":"#4FC3F7","bold":true}
execute if score @s ec.cf_codex_section matches 2 as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Recipe Book \u2726","color":"#FFB74D","bold":true}
execute if score @s ec.cf_codex_section matches 3 as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Cookbook \u2726","color":"#EF5350","bold":true}
execute if score @s ec.cf_codex_section matches 4 as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Housing \u2726","color":"#66BB6A","bold":true}
execute if score @s ec.cf_codex_section matches 5 as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Laborer Registry \u2726","color":"#AB47BC","bold":true}
execute if score @s ec.cf_codex_section matches 6 as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Housing Guide \u2726","color":"#66BB6A","bold":true}
execute if score @s ec.cf_codex_section matches 7 as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Node Map \u2726","color":"#26A69A","bold":true}
execute if score @s ec.cf_codex_section matches 8 as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Material Index \u2726","color":"#78909C","bold":true}
execute if score @s ec.cf_codex_section matches 9 as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Recipes \u2726","color":"#FFB74D","bold":true}
execute if score @s ec.cf_codex_section matches 10 as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Discovery \u2726","color":"#4FC3F7","bold":true}
execute if score @s ec.cf_codex_section matches 11 as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Travel Journal \u2726","color":"dark_aqua","bold":true}
execute if score @s ec.cf_codex_section matches 12 as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Cosmetics \u2726","color":"aqua","bold":true}
execute if score @s ec.cf_codex_section matches 13 as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Crafting Classes \u2726","color":"#8BC34A","bold":true}
execute if score @s ec.cf_codex_section matches 14 as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run data modify entity @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] text set value {"text":"\u2726 Milestones \u2726","color":"#E0B0FF","bold":true}

# Dispatch to section spawn
execute if score @s ec.cf_codex_section matches 1 run function evercraft:craftforever/codex/hub/almanac/spawn
execute if score @s ec.cf_codex_section matches 2 run function evercraft:craftforever/codex/hub/recipes/spawn
execute if score @s ec.cf_codex_section matches 3 run function evercraft:craftforever/codex/hub/cookbook/spawn
execute if score @s ec.cf_codex_section matches 4 run function evercraft:craftforever/codex/hub/housing/spawn_overview
execute if score @s ec.cf_codex_section matches 5 run function evercraft:craftforever/codex/hub/laborers/spawn
execute if score @s ec.cf_codex_section matches 6 run function evercraft:craftforever/codex/hub/housing/spawn
execute if score @s ec.cf_codex_section matches 7 run function evercraft:craftforever/codex/hub/nodemap/spawn
execute if score @s ec.cf_codex_section matches 8 run function evercraft:craftforever/codex/hub/materials/spawn
execute if score @s ec.cf_codex_section matches 9 run function evercraft:craftforever/codex/hub/recipes/spawn_overview
execute if score @s ec.cf_codex_section matches 10 run function evercraft:craftforever/codex/hub/discovery/spawn_overview
execute if score @s ec.cf_codex_section matches 11 run function evercraft:craftforever/codex/hub/travel_journal/spawn
execute if score @s ec.cf_codex_section matches 12 run function evercraft:craftforever/codex/hub/cf_cosmetics/spawn
execute if score @s ec.cf_codex_section matches 13 run function evercraft:craftforever/codex/hub/crafting_classes/spawn
execute if score @s ec.cf_codex_section matches 14 run function evercraft:craftforever/codex/hub/cf_milestones/spawn

# Stamp newly spawned entities with session ID immediately (don't wait for tick)
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s as @e[tag=CF.MenuElement,distance=..5] unless score @s ec.cf_gui_session matches 1.. run scoreboard players operation @s ec.cf_gui_session = #cf_click_sess ec.temp
# Fallback stamp from player position (covers entities spawned after player moved from anchor)
execute as @e[tag=CF.MenuElement,distance=..5] unless score @s ec.cf_gui_session matches 1.. run scoreboard players operation @s ec.cf_gui_session = #cf_click_sess ec.temp

# Set cooldown and play click sound
scoreboard players set @s ec.cf_codex_cd 3
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
