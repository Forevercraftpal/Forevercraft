# ============================================================
# Campfire Kitchen GUI — Mode Toggle Click Handler
# Runs as the interaction entity
# Toggles between Quick Cook (0) and Chef's Touch (1)
# ============================================================

data remove entity @s interaction

# Toggle mode on nearest player with menu open
execute as @a[tag=CK.InMenu,distance=..5,limit=1] run function evercraft:cooking/gui/toggle_mode

playsound minecraft:ui.button.click master @a[tag=CK.InMenu,distance=..5,limit=1] ~ ~ ~ 0.5 1.2
