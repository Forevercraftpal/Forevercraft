# Hollow Sovereign — Sculk Particle Hint (reveals position while invisible)
# Called as the boss entity, at boss position

# Large sculk particle burst — gives away position
particle minecraft:sculk_soul ~ ~0.5 ~ 1.5 0.5 1.5 0.03 15
particle minecraft:sculk_charge_pop ~ ~1 ~ 1 1 1 0.02 10
particle minecraft:enchant ~ ~1 ~ 1 1 1 0.5 10

# Eerie sound
playsound minecraft:block.sculk_sensor.clicking hostile @a[tag=ec.rd_participant] ~ ~ ~ 0.8 0.6
playsound minecraft:block.sculk_catalyst.bloom hostile @a[tag=ec.rd_participant] ~ ~ ~ 0.5 0.4
