# Javelin Class — Hoplite Counter Thrust
# Called from shield block handler — sets 3s window for bonus melee damage

# Only fires for javelin players with Hoplite active
execute unless entity @s[tag=ec.jv_active] run return 0
execute unless score @s ec.jv_hoplite matches 1 run return 0

# Set 3-second counter thrust window (60 ticks)
scoreboard players set @s ec.jv_counter 60
playsound minecraft:item.shield.block player @s ~ ~ ~ 0.8 1.5
title @s actionbar [{"text":"Counter Thrust!","color":"gold","bold":true}]
