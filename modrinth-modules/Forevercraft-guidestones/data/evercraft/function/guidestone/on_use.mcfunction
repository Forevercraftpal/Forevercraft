# Guidestone — On Use (right-click a lodestone)
# Called by use_lodestone advancement for ANY lodestone right-click
# Run as: the player

# Revoke advancement immediately for re-detection
advancement revoke @s only evercraft:guidestone/use_lodestone

# Check if there's a guidestone marker nearby (within 3 blocks)
# If not, this is a regular lodestone — do nothing
execute unless entity @e[type=marker,tag=ec.gs_marker,distance=..3] run return 0

# Open the menu — run as/at the PLAYER (not the marker) so GUI faces player direction
# menu/open uses ^ ^ ^ local coords which need player rotation
execute if entity @s[tag=!ec.gs_in_menu] at @s run function evercraft:guidestone/menu/open
