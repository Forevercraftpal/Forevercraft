# Glyphforge — On Interact (right-click detected)
# Clear interaction data and open GUI for nearest player

data remove entity @s interaction

# Don't open if someone already has menu open nearby
execute if entity @p[distance=..6,tag=RF.InMenu] run return 0

# Open for nearest non-menu player
execute as @p[distance=..6,tag=!RF.InMenu] at @s run function evercraft:glyphforge/gui/open
