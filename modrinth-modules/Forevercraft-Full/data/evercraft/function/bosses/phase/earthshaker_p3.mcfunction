# Earthshaker — Phase 3 Specifics
# Called as the boss entity, at boss position

# Massive ground pound VFX
particle minecraft:explosion ~ ~0.5 ~ 5 0.3 5 0.1 20
particle minecraft:dust{color:[0.6,0.4,0.2],scale:3.0} ~ ~0.5 ~ 5 0.3 5 0.01 40
playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 2.0 0.3

# Fire resistance for survivability
effect give @s fire_resistance infinite 0 true
effect give @s resistance infinite 0 true
