# Artisan Forge — On Interact (right-click detected)
# Runs as the interaction entity

data remove entity @s interaction

# Don't open if someone already has forge menu open nearby
execute if entity @p[distance=..6,tag=CF.InMenu] run return 0

# Open for nearest non-menu player
execute as @p[distance=..6,tag=!CF.InMenu] at @s run function evercraft:craftforever/forging/gui/open
