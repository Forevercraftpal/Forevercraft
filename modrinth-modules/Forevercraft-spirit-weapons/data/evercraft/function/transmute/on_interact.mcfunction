# Transmutation Stand — Interaction detected (right-click)
# Run as: the interaction entity, at its position

# Clear interaction data so it can fire again
data remove entity @s interaction

# Open GUI for the nearest player (toggle — open already handles close if already in menu)
execute as @p[distance=..6] at @s run function evercraft:transmute/gui/open
