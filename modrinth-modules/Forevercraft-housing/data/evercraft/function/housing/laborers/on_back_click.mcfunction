# ============================================================
# Laborers Sub-Menu — Back button clicked
# Run as: the interaction entity, at its position
# ============================================================

# Clear interaction data
data remove entity @s interaction

# Close laborers sub-menu and return to main hearthstone menu
execute as @p[tag=HS.InLaborers,distance=..5] at @s run function evercraft:housing/laborers/close_laborers
