# Firebrand — Rampage (Sneak+Right-click, 30s CD)
# 8-second buff: Speed II + every kill extends by 2s, +10% damage, AoE shockwave
# Spirit tier: 12-second base duration

# Set cooldown (600 ticks = 30 seconds)
scoreboard players set @s ec.sp_cd2 600

# Start Rampage timer (160 ticks = 8 seconds; spirit: 240 = 12 seconds)
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_rampage 240
execute unless score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_rampage 160

# Reset damage stacks
scoreboard players set @s ec.sp_rampage_dmg 0

# Tag for rampage active state
tag @s add ec.sp_rampage_active

# Apply Speed II
effect give @s speed 12 1 true

# VFX
playsound minecraft:entity.ravager.roar player @a ~ ~ ~ 1.0 1.2
particle flame ~ ~1 ~ 0.5 0.8 0.5 0.1 30
title @s actionbar [{"text":"RAMPAGE!","color":"dark_red","bold":true},{"text":" — Kill to extend!","color":"red"}]
