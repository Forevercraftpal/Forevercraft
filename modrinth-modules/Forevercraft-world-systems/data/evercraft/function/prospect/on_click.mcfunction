# Ore Node: Handle node interaction click
# Run as interaction entity, at node position

# Clear the interaction data
data remove entity @s interaction

# Start mining for the nearest player within 3 blocks
execute as @p[distance=..3] at @s run function evercraft:prospect/start_mine
