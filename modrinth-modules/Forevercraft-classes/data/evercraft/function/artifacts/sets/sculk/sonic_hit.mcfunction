# Sculk - Sonic hit at position
# Runs at position in front of player

# Damage nearby enemies at this position
execute as @e[type=#evercraft:hostile,distance=..2] run damage @s 10 minecraft:sonic_boom

# Particles
particle sculk_soul ~ ~ ~ 0.5 0.5 0.5 0.02 10
