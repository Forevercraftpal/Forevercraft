# Foraging Bush: Handle bush interaction click
# Run as interaction entity, at bush position

# Clear the interaction data
data remove entity @s interaction

# Start gathering for the nearest player within 3 blocks
execute as @p[distance=..3] at @s run function evercraft:forage/start_gather
