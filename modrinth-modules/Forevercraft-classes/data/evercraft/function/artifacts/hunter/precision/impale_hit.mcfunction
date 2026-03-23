# Impale — Single target devastation
# @s = hit entity, position = hit entity

# Massive single-target effects
effect give @s slowness 4 3 false
effect give @s instant_damage 1 0 false

# Particles
particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.5 20
particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.5 0.3 0.3 15

# Sound
playsound minecraft:entity.arrow.hit master @a ~ ~ ~ 2 0.5
