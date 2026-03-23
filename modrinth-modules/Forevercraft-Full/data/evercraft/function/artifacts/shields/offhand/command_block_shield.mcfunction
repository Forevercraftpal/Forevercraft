# Command Block Shield — "Admin Override"
# Strength 2 + Speed 2 for 4s, Mining Fatigue 1 for 8s, 18s CD

effect give @s strength 4 1 false
effect give @s speed 4 1 false
effect give @s mining_fatigue 8 0 false

# Particles + sound
execute at @s run particle witch ~ ~1 ~ 0.4 0.6 0.4 0.2 15
execute at @s run particle reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.05 10
execute at @s run playsound minecraft:block.command_block.place master @s ~ ~ ~ 0.8 1.0
execute at @s run playsound minecraft:item.shield.block master @s ~ ~ ~ 0.5 1.4

# Set cooldown
scoreboard players set @s ec.tk_off_cd 18

# Actionbar feedback
title @s actionbar {"text":"Admin Override!","color":"aqua","bold":true}
