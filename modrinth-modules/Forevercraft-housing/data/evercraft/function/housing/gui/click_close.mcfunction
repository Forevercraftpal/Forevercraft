# Hearthstone GUI — Close button clicked
# Run as: the interaction entity
data remove entity @s interaction
execute as @p[distance=..6,tag=HS.InMenu] at @s run function evercraft:housing/gui/close
