# ============================================================
# House Key GUI — Stash Settings button clicked
# Run as: the interaction entity, at its position
# ============================================================
data remove entity @s interaction

# Open settings sub-menu for the nearest player with satchel open
execute as @p[tag=HS.InSatchel,distance=..5] at @s run function evercraft:housing/stash/keep/open_settings
