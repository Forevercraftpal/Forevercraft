# ============================================================
# Stash Settings — Close sub-menu, return to main menu
# Run as: player with HS.InMenu + HS.InSettings
# ============================================================

# Remove settings tag
tag @s remove HS.InSettings

# Kill ALL settings elements (including settings BG)
kill @e[type=text_display,tag=HS.SettingsEl,distance=..7]
kill @e[type=interaction,tag=HS.SettingsEl,distance=..7]
kill @e[type=item_display,tag=HS.SettingsBG,distance=..7]

# Return to satchel if came from House Key menu
execute if entity @s[tag=HS.InSatchel] run tag @s remove HS.InSatchel
execute unless entity @s[tag=HS.InMenu] at @s run return run function evercraft:housing/satchel/gui/open

# Re-open main menu (which spawns fresh elements)
# First remove HS.InMenu so open doesn't toggle-close
tag @s remove HS.InMenu
execute at @s run function evercraft:housing/gui/open
