# Golden Goliath Shield — "Goliath's Fury"
# Haste 3 for 5 seconds, 20s cooldown

effect give @s haste 5 2 false

# Particles + sound
execute at @s run particle enchant ~ ~1 ~ 0.5 0.6 0.5 0.5 15
execute at @s run particle enchanted_hit ~ ~0.5 ~ 0.4 0.4 0.4 0.3 10
execute at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 0.7 1.0
execute at @s run playsound minecraft:item.shield.block master @s ~ ~ ~ 0.6 1.3

# Set cooldown
scoreboard players set @s ec.tk_off_cd 20

# Actionbar feedback
title @s actionbar {"text":"Goliath's Fury!","color":"yellow","bold":true}
