# Biome Detection Tick — Detect biome changes and play transition chime
# Self-scheduling every 5s, iterates all players

# Early exit if no players
execute unless entity @a run return run schedule function evercraft:biome/tick 5s

# Per-player biome check
execute as @a at @s run function evercraft:biome/tick_player

# Reschedule
schedule function evercraft:biome/tick 5s
