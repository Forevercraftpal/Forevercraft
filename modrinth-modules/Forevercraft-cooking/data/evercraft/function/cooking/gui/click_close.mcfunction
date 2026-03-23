# ============================================================
# Campfire Kitchen GUI — Close Button Click Handler
# Runs as the interaction entity, at its position
# ============================================================

# Clear click data
data remove entity @s interaction

# Close the GUI (runs as the player)
execute as @a[tag=CK.InMenu,distance=..5,limit=1] run function evercraft:cooking/gui/close
