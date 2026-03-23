# Zephyr Edge — Zephyr Dance Strike
# Teleport to random offset from target, deal damage, consume charge
# 5th strike (or 3rd at spirit tier) calls lightning

# Consume a charge
scoreboard players remove @s ec.sp_charges 1

# Find nearest hostile
tag @e[distance=..8,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,limit=1,sort=nearest] add ec.sp_target

# Teleport to random offset from target (5 blocks)
execute at @e[tag=ec.sp_target,limit=1] run spreadplayers ~ ~ 2 5 false @s

# Face the target
execute at @s facing entity @e[tag=ec.sp_target,limit=1] feet run tp @s ~ ~ ~ ~ ~

# Deal weapon damage
damage @e[tag=ec.sp_target,limit=1] 8 minecraft:player_attack by @s

# VFX per strike
playsound minecraft:entity.breeze.jump player @a ~ ~ ~ 0.8 1.8
particle gust ~ ~1 ~ 0.3 0.5 0.3 0.05 8

# Check for lightning strike (every 5th hit; spirit: every 3rd)
execute store result score #dance_check ec.temp run scoreboard players get @s ec.sp_charges
# Lightning on charges reaching 0 (used all charges)
execute if score @s ec.sp_charges matches 0 at @e[tag=ec.sp_target,limit=1] run summon lightning_bolt ~ ~ ~
execute if score @s ec.sp_charges matches 0 run function evercraft:spirit/abilities/zephyr_edge/dance_end

# Show remaining charges
execute if score @s ec.sp_charges matches 1.. run title @s actionbar [{"text":"Zephyr Dance ","color":"gold"},{"score":{"name":"@s","objective":"ec.sp_charges"},"color":"yellow"},{"text":" charges left","color":"yellow"}]

# Cleanup
tag @e[tag=ec.sp_target] remove ec.sp_target
