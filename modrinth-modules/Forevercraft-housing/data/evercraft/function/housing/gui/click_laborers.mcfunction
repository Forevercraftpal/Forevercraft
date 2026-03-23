# ============================================================
# Hearthstone GUI — Laborers button clicked
# Run as: the interaction entity, at its position
# ============================================================

# Clear interaction data
data remove entity @s interaction

# Open laborers sub-menu for the nearest player with menu open
execute as @p[tag=HS.InMenu,distance=..5] at @s run function evercraft:housing/laborers/open_laborers
