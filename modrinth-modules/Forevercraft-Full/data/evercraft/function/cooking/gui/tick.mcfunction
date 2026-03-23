# ============================================================
# Campfire Kitchen GUI — Per-Tick
# Runs as each player with CK.InMenu tag (from tick.mcfunction)
# Validates menu state and dispatches click checks
# ============================================================

# Must still have the tag
execute unless entity @s[tag=CK.InMenu] run return 0

# Close if player stops holding utensil
# (Item-triggered menu: no distance/timer auto-close needed — item switch handles it)
execute unless predicate evercraft:cooking/holding_utensil run return run function evercraft:cooking/gui/close

# If in minigame, dispatch to minigame tick instead of normal clicks
execute if entity @s[tag=CK.Cooking] run return run function evercraft:cooking/minigame/tick

# Check for clicks
function evercraft:cooking/gui/check_clicks
