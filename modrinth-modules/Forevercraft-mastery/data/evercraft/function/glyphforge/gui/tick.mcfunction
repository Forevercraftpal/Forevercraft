# Glyphforge GUI — Per-tick (called from main tick for RF.InMenu players)
# Check distance and route clicks

# Auto-close if player moved too far from any glyphforge marker
execute unless entity @e[type=marker,tag=RF.Marker,distance=..6] run function evercraft:glyphforge/gui/close
execute unless entity @s[tag=RF.InMenu] run return 0

# Auto-close after 20 seconds of inactivity (400 ticks)
scoreboard players add @s rf.menu_time 1
execute if score @s rf.menu_time matches 400.. run return run function evercraft:glyphforge/gui/close
execute unless entity @s[tag=RF.InMenu] run return 0

# Reset inactivity timer if any menu button was clicked this tick
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=RF.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run scoreboard players set @p[tag=RF.InMenu,distance=..7] rf.menu_time 0

# Check clicks
function evercraft:glyphforge/gui/check_clicks
