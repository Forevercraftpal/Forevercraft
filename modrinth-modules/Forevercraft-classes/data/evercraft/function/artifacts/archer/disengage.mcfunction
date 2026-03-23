# Archer Bow — Disengage Leap
# Shift + right-click with any archer bow to leap backward
# Grants brief Slow Falling to prevent fall damage

# Set cooldown (4 seconds)
scoreboard players set @s ec.ar_disengage 4

# Leap backward (8 blocks behind facing + 2 blocks up)
execute at @s run tp @s ^ ^2 ^-8

# Slow Falling to cushion landing
effect give @s slow_falling 3 0 true

# Feedback
execute at @s run playsound minecraft:entity.wind_charge.wind_burst master @a ~ ~ ~ 1 1.2
execute at @s run particle cloud ~ ~ ~ 0.5 0.3 0.5 0.1 20
execute at @s run particle end_rod ~ ~0.5 ~ 0.3 0.5 0.3 0.05 10
title @s actionbar {"text":"Disengage!","color":"aqua","bold":true}

# Reset draw state (disengage interrupts overcharge)
scoreboard players set @s ec.ar_draw 0
scoreboard players set @s ec.ar_charged 0
