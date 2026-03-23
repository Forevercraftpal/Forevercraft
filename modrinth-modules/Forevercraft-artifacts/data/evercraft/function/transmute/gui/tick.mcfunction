# Artifact Transmutation GUI — Tick
# Called every tick for players with TX.InMenu tag
# Run as: player, at player position

execute unless entity @s[tag=TX.InMenu] run return 0

# Close if too far from anvil
execute unless entity @e[type=marker,tag=TX.Marker,distance=..5] run return run function evercraft:transmute/gui/close

# Check for clicks
function evercraft:transmute/gui/check_clicks
