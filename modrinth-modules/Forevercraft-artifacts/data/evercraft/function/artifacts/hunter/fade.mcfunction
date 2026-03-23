# Fade — Hunter stealth reposition
# Gain Invisibility + Speed briefly

# Set fade cooldown (10 seconds)
scoreboard players set @s ec.ht_fade 10

# Effects
effect give @s invisibility 3 0 true
effect give @s speed 2 1 true

# Particles (smoke poof)
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.5 0.5 0.5 0.02 15
particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.05 10

# Sound
playsound minecraft:entity.illusioner.cast_spell master @s ~ ~ ~ 1 1.5
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.5 2.0

# Reset aim state
scoreboard players set @s ec.ht_aim 0

# Feedback
tellraw @s [{"text":"[Hunter] ","color":"dark_aqua"},{"text":"Fade","color":"aqua","bold":true},{"text":" \u2014 Vanishing into shadow!","color":"gray"}]
