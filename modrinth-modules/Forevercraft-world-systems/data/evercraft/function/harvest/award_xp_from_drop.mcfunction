# Harvest XP — Award XP from dropped marker and remove it
# Run as the stone_button item entity, at its position
# Gives 1 XP to the nearest player (who harvested the crop) and kills the marker

experience add @p[distance=..8] 1 points
kill @s
