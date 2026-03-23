# Prestige — Update GUI Visual
# Refreshes GUI display with prestige stars and colors if the player has the menu open

# Only if GUI is open
execute unless entity @s[tag=Adv.InMenu] run return 0

# Refresh all tree displays (refresh.mcfunction handles prestige stars)
function evercraft:advantage/gui/refresh
