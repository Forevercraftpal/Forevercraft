# Zephyr Edge — Cyclone (Right-click, 8s CD)
# Become a spinning tornado for 3 seconds (spirit: 5s)
# Pull enemies within 6 blocks (spirit: 8), deal 3 dmg/sec, immune to knockback
# Ends with burst: launch enemies 5 blocks away + 6 damage

# Set cooldown (160 ticks = 8 seconds)
scoreboard players set @s ec.sp_cd1 160

# Start Cyclone (60 ticks = 3 seconds; spirit: 100 ticks = 5 seconds)
tag @s add ec.sp_cyclone_active
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 100
execute unless score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 60

# Knockback immunity via Resistance I (visual) + we'll handle knockback reset in tick
effect give @s resistance 5 0 true

# VFX + Sound
playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~ 1.0 0.8
title @s actionbar [{"text":"CYCLONE!","color":"aqua","bold":true}]
