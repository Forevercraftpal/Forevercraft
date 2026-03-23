# ============================================================
# Stash Settings — Back button clicked
# Run as: the interaction entity
# ============================================================
data remove entity @s interaction
execute as @p[tag=HS.InSettings,distance=..5] at @s run function evercraft:housing/stash/keep/close_settings
