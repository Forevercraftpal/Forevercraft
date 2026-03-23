# Aegis Burst — Hoplite Active Ability
# Absorption II (4 golden hearts) for 5s after taking 3 hits within 5s
# Cooldown: 15s

# Reset hit tracking
scoreboard players set @s ec.jv_aegis 0
scoreboard players set @s ec.jv_aegis_w 0

# Set cooldown (15s)
scoreboard players set @s ec.jv_aegis_cd 15

# Apply Absorption II
effect give @s absorption 5 1 false

# Feedback
execute at @s run particle enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.5 15
playsound minecraft:item.shield.block player @s ~ ~ ~ 1.0 0.8
title @s actionbar [{"text":"Aegis Burst!","color":"#5B9BD5","bold":true}]
