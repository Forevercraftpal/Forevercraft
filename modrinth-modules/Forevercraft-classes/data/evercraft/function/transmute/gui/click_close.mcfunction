# Transmute GUI — Close button clicked
# Run as: the interaction entity

# Clear interaction data
data remove entity @s interaction

# Close menu for nearest player in menu
execute as @p[distance=..6,tag=TX.InMenu] at @s run function evercraft:transmute/gui/close
