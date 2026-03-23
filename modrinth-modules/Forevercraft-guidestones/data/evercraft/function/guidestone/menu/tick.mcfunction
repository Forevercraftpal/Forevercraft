# Guidestone Menu — Tick (runs every 1s for players with menu open)
# Run as player at their position

# Close if too far from guidestone (normal) or too far from menu background (remote Portal Dial)
execute unless entity @s[tag=ec.gs_remote_menu] unless entity @e[type=marker,tag=ec.gs_registered,distance=..5] run function evercraft:guidestone/menu/close
execute if entity @s[tag=ec.gs_remote_menu] unless entity @e[type=item_display,tag=ec.gs_menu_bg,distance=..5] run function evercraft:guidestone/menu/close
execute unless entity @s[tag=ec.gs_in_menu] run return 0

# Auto-close after 20 seconds of inactivity
scoreboard players add @s ec.gs_menu_time 1
execute if score @s ec.gs_menu_time matches 20.. run function evercraft:guidestone/menu/close
execute unless entity @s[tag=ec.gs_in_menu] run return 0

# Check close button click (shared shell, all views)
# Reset flag first — if no close button exists, store success won't fire and stale value persists
scoreboard players set #gs_close ec.gs_temp 0
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute store success score #gs_close ec.gs_temp as @e[type=interaction,tag=ec.gs_close_btn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #gs_close ec.gs_temp matches 1 run function evercraft:guidestone/menu/close
execute unless entity @s[tag=ec.gs_in_menu] run return 0

# Reset inactivity timer if any menu button was clicked this tick (check before handlers consume the data)
execute as @e[type=interaction,tag=ec.gs_menu_el,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run scoreboard players set @p[tag=ec.gs_in_menu,distance=..5] ec.gs_menu_time 0

# Always check view navigation clicks (shared shell, all views)
execute as @e[type=interaction,tag=ec.gs_view_nav_left,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guidestone/menu/view_prev
execute as @e[type=interaction,tag=ec.gs_view_nav_right,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guidestone/menu/view_next

# Dispatch to correct view handler
execute if score @s ec.gs_view matches 1 run function evercraft:guidestone/menu/tick_network
execute if score @s ec.gs_view matches 2 run function evercraft:guidestone/menu/tick_interdim
execute if score @s ec.gs_view matches 3 run function evercraft:guidestone/menu/tick_wormhole
execute if score @s ec.gs_view matches 4 run function evercraft:guidestone/menu/tick_guild
