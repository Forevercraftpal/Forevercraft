# ============================================================
# Hearthstone GUI — Upgrade button clicked
# Run as: the interaction entity
# ============================================================
data remove entity @s interaction

# Find the clicking player
execute as @p[distance=..6,tag=HS.InMenu] at @s run function evercraft:housing/gui/do_upgrade
