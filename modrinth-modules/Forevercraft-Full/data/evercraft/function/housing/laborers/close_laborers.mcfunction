# ============================================================
# Laborers Sub-Menu — Close, return to main menu
# Run as: player with HS.InMenu + HS.InLaborers
# ============================================================

# Remove laborers tag
tag @s remove HS.InLaborers

# Kill ALL laborers sub-menu elements
kill @e[type=text_display,tag=HS.LaborersEl,distance=..7]
kill @e[type=interaction,tag=HS.LaborersEl,distance=..7]
kill @e[type=item_display,tag=HS.LaborersBG,distance=..7]

# Re-open main menu (which spawns fresh elements)
# First remove HS.InMenu so open doesn't toggle-close
tag @s remove HS.InMenu
execute at @s run function evercraft:housing/gui/open
