# ============================================================
# Hearthstone GUI — Tick
# Called every tick for players with HS.InMenu tag
# Run as: player, at player position
# ============================================================

execute unless entity @s[tag=HS.InMenu] run return 0

# Close if too far from hearthstone
execute unless entity @e[type=marker,tag=HS.Marker,distance=..5] run return run function evercraft:housing/gui/close

# Auto-close after 20 seconds of inactivity (400 ticks)
scoreboard players add @s hs.menu_time 1
execute if score @s hs.menu_time matches 400.. run return run function evercraft:housing/gui/close

# Reset inactivity timer if any menu button was clicked this tick
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=HS.MenuEl,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run scoreboard players set @p[tag=HS.InMenu,distance=..5] hs.menu_time 0

# Check for clicks (sub-menus have their own click handlers)
execute if entity @s[tag=HS.InSettings] run return run function evercraft:housing/stash/keep/check_clicks
execute if entity @s[tag=HS.InLaborers] run return run function evercraft:housing/laborers/check_clicks
function evercraft:housing/gui/check_clicks
