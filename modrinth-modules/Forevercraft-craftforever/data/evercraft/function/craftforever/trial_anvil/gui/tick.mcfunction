# Trial Anvil GUI — Per-tick (called from main tick for TT.InMenu players)

# Auto-close if player moved too far from any Trial Anvil marker
execute unless entity @e[type=marker,tag=TT.Marker,distance=..6] run function evercraft:craftforever/trial_anvil/gui/close
execute unless entity @s[tag=TT.InMenu] run return 0

# Auto-close after 20 seconds of inactivity (400 ticks)
scoreboard players add @s rf.menu_time 1
execute if score @s rf.menu_time matches 400.. run return run function evercraft:craftforever/trial_anvil/gui/close
execute unless entity @s[tag=TT.InMenu] run return 0

# Reset inactivity timer if any menu button was clicked this tick
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=TT.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run scoreboard players set @p[tag=TT.InMenu,distance=..7] rf.menu_time 0

# Check clicks
function evercraft:craftforever/trial_anvil/gui/check_clicks
