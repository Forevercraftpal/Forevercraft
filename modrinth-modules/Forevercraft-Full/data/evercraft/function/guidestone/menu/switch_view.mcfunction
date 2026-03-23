# Guidestone Menu — Switch View
# Macro arg: operation ("add" = next view, "remove" = previous view)
# Run as/at the player
# Views: 1 = Local Network, 2 = Interdimensional, 3 = Wormhole, 4 = Guild Network

# Save current view before changing
scoreboard players operation #gs_old_view ec.gs_temp = @s ec.gs_view

# Calculate new view: add 1 or remove 1, then wrap 1-4
# Max view depends on whether player is in a guild (4 if guilded, 3 if not)
scoreboard players set #gs_max_view ec.gs_temp 3
execute if score @s ec.guild_id matches 1.. run scoreboard players set #gs_max_view ec.gs_temp 4

$execute if score @s ec.gs_view matches 1.. run scoreboard players $(operation) @s ec.gs_view 1
execute if score @s ec.gs_view matches 0 run scoreboard players operation @s ec.gs_view = #gs_max_view ec.gs_temp
scoreboard players operation #gs_wrap ec.gs_temp = #gs_max_view ec.gs_temp
scoreboard players add #gs_wrap ec.gs_temp 1
execute if score @s ec.gs_view = #gs_wrap ec.gs_temp run scoreboard players set @s ec.gs_view 1

# GATE: If view 2 (interdimensional) and guidestone is NOT primed, deny and STAY on current page
scoreboard players set #gs_denied ec.gs_temp 0
execute if score @s ec.gs_view matches 2 if data storage evercraft:guidestone {menu_ctx:{primed:0b}} run scoreboard players set #gs_denied ec.gs_temp 1
execute if score #gs_denied ec.gs_temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The guidestone seemingly can't pass the barrier... ",color:"gray",italic:true},{text:"maybe something could allow it to pierce through?",color:"dark_purple",italic:true}]
execute if score #gs_denied ec.gs_temp matches 1 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.8 0.5
execute if score #gs_denied ec.gs_temp matches 1 run scoreboard players operation @s ec.gs_view = #gs_old_view ec.gs_temp
execute if score #gs_denied ec.gs_temp matches 1 run return 0

# Kill all view-specific content (slot elements, but keep shared shell)
execute at @s run kill @e[type=text_display,tag=ec.gs_slot_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.gs_slot_el,distance=..5]

# Reset page to 1 for the new view
scoreboard players set @s ec.gs_page 1

# Update title text based on view
execute if score @s ec.gs_view matches 1 as @e[type=text_display,tag=ec.gs_menu_title,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2726 ",color:"dark_purple"},{text:"Local Network",color:"light_purple",bold:true},{text:" \u2726",color:"dark_purple"}]
execute if score @s ec.gs_view matches 2 as @e[type=text_display,tag=ec.gs_menu_title,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2726 ",color:"dark_purple"},{text:"Interdimensional",color:"dark_aqua",bold:true},{text:" \u2726",color:"dark_purple"}]
execute if score @s ec.gs_view matches 3 as @e[type=text_display,tag=ec.gs_menu_title,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2726 ",color:"dark_purple"},{text:"Wormhole",color:"light_purple",bold:true},{text:" \u2726",color:"dark_purple"}]
execute if score @s ec.gs_view matches 4 as @e[type=text_display,tag=ec.gs_menu_title,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2726 ",color:"dark_purple"},{text:"Guild Network",color:"dark_purple",bold:true},{text:" \u2726",color:"dark_purple"}]

# Spawn new view content
execute if score @s ec.gs_view matches 1 run function evercraft:guidestone/menu/refresh
execute if score @s ec.gs_view matches 2 run function evercraft:guidestone/menu/refresh_interdim
execute if score @s ec.gs_view matches 3 run function evercraft:guidestone/wormhole/show
execute if score @s ec.gs_view matches 4 run function evercraft:guidestone/menu/refresh_guild

# Page switch sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
