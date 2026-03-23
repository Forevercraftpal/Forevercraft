# Biome Mastery — 5-second tick (self-scheduling)
# OPT: Biome detection cache is 5s, so checking every 1s was redundant
schedule function evercraft:biome_mastery/tick 5s

# OPT: Early exit if no players online
execute unless entity @a run return 0

# Process each online player
execute as @a at @s run function evercraft:biome_mastery/player_tick
