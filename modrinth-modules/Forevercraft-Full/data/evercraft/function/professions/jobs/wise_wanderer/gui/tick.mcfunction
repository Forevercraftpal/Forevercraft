# Wise Wanderer — Per-Tick GUI Maintenance
# Runs as the player with WW.InMenu tag, at their position

# Close if player moves too far from anchor (> 5 blocks)
execute unless entity @e[type=minecraft:marker,tag=WW.MenuAnchor,distance=..5] run function evercraft:professions/jobs/wise_wanderer/gui/close
execute unless entity @s[tag=WW.InMenu] run return 0

# Auto-close after 20 seconds of inactivity (400 ticks)
scoreboard players add @s ec.ww_idle 1
execute if score @s ec.ww_idle matches 400.. run return run function evercraft:professions/jobs/wise_wanderer/gui/close
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=WW.MenuElement,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run scoreboard players set @p[tag=WW.InMenu,distance=..5] ec.ww_idle 0

# Check for buy clicks
function evercraft:professions/jobs/wise_wanderer/gui/check_clicks

# Update XP display and row availability
function evercraft:professions/jobs/wise_wanderer/gui/refresh
