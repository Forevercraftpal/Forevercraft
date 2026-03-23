# Zephyr Edge — Zephyr Dance (Sneak+Right-click, 20s CD)
# Gain 5 Wind Charges (spirit: 7). Each attack teleports to random offset from target
# 5th strike calls lightning on target

# Set cooldown (400 ticks = 20 seconds)
scoreboard players set @s ec.sp_cd2 400

# Grant Wind Charges
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_charges 7
execute unless score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_charges 5

# Tag for tracking
tag @s add ec.sp_zephyr_dance

# VFX
playsound minecraft:entity.breeze.charge player @a ~ ~ ~ 1.0 1.2
particle gust ~ ~1 ~ 0.5 0.5 0.5 0.1 15
title @s actionbar [{"text":"Zephyr Dance! ","color":"gold","bold":true},{"score":{"name":"@s","objective":"ec.sp_charges"},"color":"yellow"},{"text":" charges","color":"yellow"}]
