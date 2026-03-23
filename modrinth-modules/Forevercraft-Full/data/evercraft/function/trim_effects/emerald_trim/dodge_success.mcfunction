# Emerald Trim — Dodge successful! Near-immunity for 1 tick
effect give @s minecraft:resistance 1 4 true

# Visual feedback — green particles
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.5 0.3 0.1 15 force
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.5 1.5

# Actionbar message
title @s actionbar {"text":"Dodged!","color":"green","bold":true}
