# Spring Animal Spawns — called every 60s during spring
# Spawns a random passive mob near each player if area isn't overcrowded

# For each player: skip if too many animals nearby (>25 within 48 blocks)
execute as @a at @s run function evercraft:seasons/effects/spring_spawn_single
