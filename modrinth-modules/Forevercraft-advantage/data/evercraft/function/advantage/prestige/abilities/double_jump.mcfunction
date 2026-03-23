# Prestige Agility P2: Double Jump — levitation burst when sneaking while airborne
# Called from tick/main when P2 active, airborne, sneaking, and cooldown=0

# Apply short levitation burst (0.4s) + upward velocity
effect give @s minecraft:levitation 1 3 true
# Reset fall distance to prevent fall damage from the jump
execute store result entity @s fall_distance double 0.001 run scoreboard players set #zero adv.temp 0

# Set cooldown (3 seconds = 60 ticks)
scoreboard players set @s adv.pa_agil2_cd 60

# Effects
playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.5 1.5
particle minecraft:cloud ~ ~ ~ 0.3 0.1 0.3 0.05 8 force
title @s actionbar [{text:"Double Jump!",color:"green"}]
