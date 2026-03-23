# ============================================================
# Dream Echoes — Particle Display Loop
# Runs every 3 seconds. Spawns gentle wisps at echo locations
# Only renders near players (markers in unloaded chunks are invisible to @e)
# ============================================================

execute as @e[type=marker,tag=ec.dream_echo] at @s if entity @a[distance=..32] run particle end_rod ~ ~0.5 ~ 0.2 0.5 0.2 0.01 3

# Check for click/attack interactions on dream echoes
# OPT: Existence gate — skip both interaction scans when no echo interactions exist
execute if entity @e[type=interaction,tag=ec.dream_echo_click,limit=1] run function evercraft:dream_echoes/check_interactions

schedule function evercraft:dream_echoes/particles 60t
