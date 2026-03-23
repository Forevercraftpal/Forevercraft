# Quickdraw — Speed boost for rapid reload
# @s = player

# Give Speed III for 2 seconds (simulates faster reload)
effect give @s speed 2 2 true

# Particles
particle minecraft:crit ~ ~1 ~ 0.3 0.3 0.3 0.2 10
particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.3 0.3 0.3 8

# Sound
playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 2.0

# Feedback
tellraw @s [{"text":"[Hunter] ","color":"dark_aqua"},{"text":"Quickdraw! ","color":"yellow","bold":true},{"text":"Rapid reload!","color":"gray"}]
