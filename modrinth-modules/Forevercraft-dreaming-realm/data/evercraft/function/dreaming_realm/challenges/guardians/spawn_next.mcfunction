# Dream Guardians — Spawn Next Wave (called via schedule)
# Finds the dreaming player and spawns the next wave
execute as @a[tag=dr.in_realm,scores={ec.dream_wave=2..3}] run function evercraft:dreaming_realm/challenges/guardians/spawn_wave
