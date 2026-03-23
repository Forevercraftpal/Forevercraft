# ============================================================
# Hearthstone — Interaction detected (right-click)
# Run as: the interaction entity, at its position
# ============================================================

# Clear interaction data so it can fire again
data remove entity @s interaction

# If nearest player already has menu open, close it first (respawn on re-click)
execute as @p[distance=..6,tag=HS.InMenu] at @s run function evercraft:housing/gui/close

# Open GUI for the nearest player
execute as @p[distance=..6] at @s run function evercraft:housing/gui/open
