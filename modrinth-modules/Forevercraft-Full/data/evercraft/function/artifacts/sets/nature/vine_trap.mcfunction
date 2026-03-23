# Nature - Vine trap effect on enemy
# Runs as enemy at enemy

# Root the enemy (slowness + mining fatigue = rooted)
effect give @s slowness 5 4 false
effect give @s mining_fatigue 5 2 false

# Poison damage over time
effect give @s poison 5 1 false

# Particles
particle composter ~ ~1 ~ 0.3 0.5 0.3 0.05 20
particle happy_villager ~ ~0.5 ~ 0.5 0.2 0.5 0.02 10
