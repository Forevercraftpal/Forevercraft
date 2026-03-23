# Celestial - Meteor hit on enemy
# Runs as enemy at enemy

# Fire damage (meteors are hot)
damage @s 8 minecraft:on_fire
data merge entity @s {Fire:60s}

# Particles
particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
particle lava ~ ~ ~ 0.3 0.2 0.3 0 5
