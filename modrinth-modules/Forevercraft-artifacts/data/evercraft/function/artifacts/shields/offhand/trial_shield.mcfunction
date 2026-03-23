# Trial Shield — "Challenger's Resolve"
# Absorption 2 for 6 seconds, 25s CD

effect give @s absorption 6 1 false

# Particles + sound
execute at @s run particle trial_spawner_detection ~ ~1 ~ 0.4 0.5 0.4 0.05 12
execute at @s run playsound minecraft:block.trial_spawner.detect_player master @s ~ ~ ~ 0.7 1.2
execute at @s run playsound minecraft:item.shield.block master @s ~ ~ ~ 0.5 1.1

# Set cooldown
scoreboard players set @s ec.tk_off_cd 25

# Actionbar feedback
title @s actionbar {"text":"Challenger's Resolve!","color":"blue","bold":true}
