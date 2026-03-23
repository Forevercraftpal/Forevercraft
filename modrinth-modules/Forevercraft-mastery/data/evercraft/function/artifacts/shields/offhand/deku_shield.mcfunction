# Deku Shield — "Forest's Vigor"
# Haste 2 for 4 seconds, 25s cooldown

effect give @s haste 4 1 false

# Particles + sound
execute at @s run particle happy_villager ~ ~1 ~ 0.4 0.5 0.4 0.1 12
execute at @s run playsound minecraft:block.azalea_leaves.place master @s ~ ~ ~ 1.0 0.8
execute at @s run playsound minecraft:item.shield.block master @s ~ ~ ~ 0.5 1.5

# Set cooldown
scoreboard players set @s ec.tk_off_cd 25

# Actionbar feedback
title @s actionbar {"text":"Forest's Vigor!","color":"green","bold":true}
