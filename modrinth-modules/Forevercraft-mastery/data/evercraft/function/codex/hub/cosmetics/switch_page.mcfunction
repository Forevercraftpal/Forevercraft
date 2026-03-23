# Cosmetics Section — Switch Page (Section 3)
# Macro arg: operation ("add" = next page, "remove" = previous page)
# Kills current page content, updates gui_page, spawns new page content
# 7 pages: Page 1 = Tier Cosmetics, Page 2 = Crate Particles, Page 3 = Crate Titles, Page 4 = Boss Titles, Page 5 = Biome Titles, Page 6 = Special Titles, Page 7 = Craftforever Titles
# Run as/at the player

# Calculate new page: add 1 or remove 1, then wrap 1-7
$execute if score @s adv.gui_page matches 1.. run scoreboard players $(operation) @s adv.gui_page 1
execute if score @s adv.gui_page matches 0 run scoreboard players set @s adv.gui_page 7
execute if score @s adv.gui_page matches 8 run scoreboard players set @s adv.gui_page 1

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill cosmetics page content via anchor
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.CosmPage,distance=..5]

# Update title text via anchor
execute if score @s adv.gui_page matches 1 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Tier Cosmetics \u2726",color:"aqua",bold:true}
execute if score @s adv.gui_page matches 2 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Crate Particles \u2726",color:"light_purple",bold:true}
execute if score @s adv.gui_page matches 3 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Crate Titles \u2726",color:"light_purple",bold:true}
execute if score @s adv.gui_page matches 4 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Boss Titles \u2726",color:"dark_red",bold:true}
execute if score @s adv.gui_page matches 5 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Biome Titles \u2726",color:"dark_green",bold:true}
execute if score @s adv.gui_page matches 6 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Special Titles \u2726",color:"#E0B0FF",bold:true}
execute if score @s adv.gui_page matches 7 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Craftforever Titles \u2726",color:"#8BC34A",bold:true}

# Spawn new page content
execute if score @s adv.gui_page matches 1 run function evercraft:codex/hub/cosmetics/spawn
execute if score @s adv.gui_page matches 2 run function evercraft:codex/hub/cosmetics/spawn_crate
execute if score @s adv.gui_page matches 3 run function evercraft:codex/hub/cosmetics/spawn_crate_titles
execute if score @s adv.gui_page matches 4 run function evercraft:codex/hub/cosmetics/spawn_boss_titles
execute if score @s adv.gui_page matches 5 run function evercraft:codex/hub/cosmetics/spawn_biome_titles
execute if score @s adv.gui_page matches 6 run function evercraft:codex/hub/cosmetics/spawn_special_titles
execute if score @s adv.gui_page matches 7 run function evercraft:ecodex/sections/craftforever_claims

# Page switch sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
