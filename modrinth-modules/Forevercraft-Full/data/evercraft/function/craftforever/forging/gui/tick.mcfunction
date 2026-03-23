# Artisan Forge GUI — Per-tick
# Called from main tick for CF.InMenu players

# Auto-close if player moved too far from forge
execute unless entity @e[type=marker,tag=CF.Marker,distance=..6] run function evercraft:craftforever/forging/gui/close
execute unless entity @s[tag=CF.InMenu] run return 0

# Auto-close after 20 seconds of inactivity (400 ticks)
scoreboard players add @s ec.cf_menu_time 1
execute if score @s ec.cf_menu_time matches 400.. run return run function evercraft:craftforever/forging/gui/close
execute unless entity @s[tag=CF.InMenu] run return 0

# Reset inactivity timer on any click
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=CF.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run scoreboard players set @p[tag=CF.InMenu,distance=..7] ec.cf_menu_time 0

# Route based on state
execute if score @s ec.cf_state matches 1..2 run function evercraft:craftforever/forging/gui/check_clicks
execute if score @s ec.cf_state matches 3 run function evercraft:craftforever/forging/minigame/tick
