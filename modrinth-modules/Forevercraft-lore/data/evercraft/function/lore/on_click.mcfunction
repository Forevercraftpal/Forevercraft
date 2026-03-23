# Lore Discovery: Handle sparkle interaction click
# Run as interaction entity, at sparkle position

# Clear the interaction data
data remove entity @s interaction

# Tag player if this is a convergence sparkle (checked in complete_pickup)
execute if entity @s[tag=ec.conv_sparkle] as @p[distance=..3] run tag @s add ec.conv_pickup

# Start pickup for the nearest player within 3 blocks
execute as @p[distance=..3] at @s run function evercraft:lore/start_pickup
