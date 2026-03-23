# Party Section — Switch Page (Section 7)
# Macro arg: operation ("add" = next page, "remove" = previous page)
# Kills current page content, updates gui_page, spawns new page content
# 2 pages: Page 1 = Party Management, Page 2 = Party Bonds
# Run as/at the player

# Calculate new page: add 1 or remove 1, then wrap 1-2
$execute if score @s adv.gui_page matches 1.. run scoreboard players $(operation) @s adv.gui_page 1
execute if score @s adv.gui_page matches 0 run scoreboard players set @s adv.gui_page 2
execute if score @s adv.gui_page matches 3 run scoreboard players set @s adv.gui_page 1

# Kill party page content via anchor
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.PartyPage,distance=..5]

# Update title text via anchor
execute if score @s adv.gui_page matches 1 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Party \u2726",color:"dark_purple",bold:true}
execute if score @s adv.gui_page matches 2 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Party Bonds \u2726",color:"dark_purple",bold:true}

# Cache party state for stale detection (per-player, page 1 only)
execute if score @s adv.gui_page matches 1 run scoreboard players operation @s ec.pty_csz = @s ec.party_size
execute if score @s adv.gui_page matches 1 run scoreboard players operation @s ec.pty_crl = @s ec.party_role

# Spawn new page content
execute if score @s adv.gui_page matches 1 run function evercraft:party/gui/spawn_management
execute if score @s adv.gui_page matches 2 run function evercraft:party/gui/spawn_bonds

# Page switch sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
