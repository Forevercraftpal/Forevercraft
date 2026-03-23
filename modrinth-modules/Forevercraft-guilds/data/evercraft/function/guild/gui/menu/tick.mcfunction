# Guild Menu — Tick (runs every tick for players with menu open)
# Run as player at their position

# Early exit if not in guild menu (prevents close loop in broken state)
execute unless entity @s[tag=ec.guild_in_menu] run return 0

# Auto-close if too far from guild stone (skip for remote/book menu)
execute unless entity @s[tag=ec.guild_remote_menu] unless entity @e[type=marker,tag=ec.guildstone,distance=..5] run function evercraft:guild/gui/menu/close
execute unless entity @s[tag=ec.guild_in_menu] run return 0

# Inactivity timeout (20 seconds = 400 ticks)
scoreboard players add @s ec.guild_menu_time 1
execute if score @s ec.guild_menu_time matches 400.. run function evercraft:guild/gui/menu/close
execute unless entity @s[tag=ec.guild_in_menu] run return 0

# Check close button click
scoreboard players set #guild_close ec.temp 0
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute store success score #guild_close ec.temp as @e[type=interaction,tag=ec.guild_close_btn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #guild_close ec.temp matches 1 run function evercraft:guild/gui/menu/close
execute unless entity @s[tag=ec.guild_in_menu] run return 0

# Reset inactivity timer on any click
execute as @e[type=interaction,tag=ec.guild_menu_el,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run scoreboard players set @p[tag=ec.guild_in_menu,distance=..5] ec.guild_menu_time 0

# Check nav button clicks
execute as @e[type=interaction,tag=ec.guild_nav_info,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guild/gui/menu/click_nav_info
execute as @e[type=interaction,tag=ec.guild_nav_members,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guild/gui/menu/click_nav_members
execute as @e[type=interaction,tag=ec.guild_nav_donate,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guild/gui/menu/click_nav_donate
execute as @e[type=interaction,tag=ec.guild_nav_manage,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guild/gui/menu/click_nav_manage
execute as @e[type=interaction,tag=ec.guild_nav_warp,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guild/gui/menu/click_nav_warp
execute as @e[type=interaction,tag=ec.guild_nav_event,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guild/gui/menu/click_nav_event
execute as @e[type=interaction,tag=ec.guild_nav_allies,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guild/gui/menu/click_nav_allies

# Check expedition display click (shows rundown in chat)
scoreboard players set #gexp_click ec.temp 0
execute store success score #gexp_click ec.temp as @e[type=interaction,tag=ec.guild_gexp_display_click,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #gexp_click ec.temp matches 1 run function evercraft:guild/expedition/show_rundown

# Check page-specific button clicks
execute if score @s ec.guild_page matches 1 run function evercraft:guild/gui/menu/tick_info
execute if score @s ec.guild_page matches 2 run function evercraft:guild/gui/menu/tick_members
execute if score @s ec.guild_page matches 3 run function evercraft:guild/gui/menu/tick_donate
execute if score @s ec.guild_page matches 4 run function evercraft:guild/gui/menu/tick_manage
execute if score @s ec.guild_page matches 5 run function evercraft:guild/gui/menu/tick_warp
execute if score @s ec.guild_page matches 6 run function evercraft:guild/gui/menu/tick_event
execute if score @s ec.guild_page matches 7 run function evercraft:guild/gui/menu/tick_allies
