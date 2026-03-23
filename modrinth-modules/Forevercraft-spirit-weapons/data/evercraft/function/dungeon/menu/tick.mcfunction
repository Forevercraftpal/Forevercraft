# Dungeon Difficulty Menu — Tick
# Run as: player with DG.InMenu tag, at player position

execute unless entity @s[tag=DG.InMenu] run return 0

# Close if too far from menu elements
execute unless entity @e[type=interaction,tag=DG.MenuEl,distance=..5] run return run function evercraft:dungeon/menu/close

# Auto-close after 20 seconds of inactivity (400 ticks)
scoreboard players add @s dg.menu_time 1
execute if score @s dg.menu_time matches 400.. run return run function evercraft:dungeon/menu/close

# Reset inactivity timer if any menu button was clicked this tick
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=DG.MenuEl,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run scoreboard players set @p[tag=DG.InMenu,distance=..5] dg.menu_time 0

# Check for clicks
function evercraft:dungeon/menu/check_clicks
