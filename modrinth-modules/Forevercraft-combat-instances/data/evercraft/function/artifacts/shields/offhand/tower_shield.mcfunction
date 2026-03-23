# Tower Shield — "Fortify"
# Resistance 2 + Slowness 1 for 5 seconds, 20s cooldown

effect give @s resistance 5 1 false
effect give @s slowness 5 0 false

# Particles + sound
execute at @s run particle block{block_state:"stone_bricks"} ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.4 1.2
execute at @s run playsound minecraft:item.shield.block master @s ~ ~ ~ 0.6 0.8

# Set cooldown
scoreboard players set @s ec.tk_off_cd 20

# Actionbar feedback
title @s actionbar {"text":"Fortify!","color":"gray","bold":true}
