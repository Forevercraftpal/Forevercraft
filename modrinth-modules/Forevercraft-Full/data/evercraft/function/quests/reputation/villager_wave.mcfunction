# ============================================================
# Villager Wave Animation
# ============================================================

# Make villager happy
particle heart ~ ~2 ~ 0.2 0.2 0.2 0.1 3
particle happy_villager ~ ~1.5 ~ 0.3 0.3 0.3 0.1 10

# Play happy sound
playsound minecraft:entity.villager.yes neutral @a[distance=..16] ~ ~ ~ 1 1
