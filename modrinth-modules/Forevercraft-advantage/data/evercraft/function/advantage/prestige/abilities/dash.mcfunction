# Prestige Agility P3: Dash — teleport 10 blocks in facing direction
# Called from tick/main when P3 active, sprinting, sneaking, and cooldown=0

# Teleport 10 blocks forward (local coordinates = facing direction)
tp @s ^ ^ ^10

# Reset fall distance to prevent fall damage on landing
execute store result entity @s fall_distance double 0.001 run scoreboard players set #zero adv.temp 0

# Set cooldown (5 seconds = 100 ticks)
scoreboard players set @s adv.pa_agil3_cd 100

# Effects
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.7 1.3
particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.1 30 force
title @s actionbar [{text:"Dash!",color:"green",bold:true}]
