# Golem - Smash hit effect on enemy
# Runs as enemy at enemy

# Heavy damage
damage @s 10 minecraft:mob_attack

# Launch upward (like iron golem attack)
effect give @s levitation 1 10 false

# Stun (slowness)
effect give @s slowness 3 3 false

# Particles on hit
particle crit ~ ~1 ~ 0.3 0.5 0.3 0.1 20
