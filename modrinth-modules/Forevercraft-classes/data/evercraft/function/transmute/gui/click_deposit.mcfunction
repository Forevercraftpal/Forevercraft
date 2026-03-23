# Transmute GUI — Deposit button clicked
# Run as: the interaction entity

# Clear interaction data
data remove entity @s interaction

# Route to the player for deposit logic
execute as @p[distance=..6,tag=TX.InMenu] at @s run function evercraft:transmute/gui/deposit
