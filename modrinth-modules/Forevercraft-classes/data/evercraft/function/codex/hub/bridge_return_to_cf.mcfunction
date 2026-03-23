# Codex Hub — Bridge Return to CF
# Player came from CF codex via bridge — close FC hub, reopen CF hub
# Run as: the player

# Remove bridge tag
tag @s remove ec.cf_bridge_active

# Close FC hub
function evercraft:advantage/gui/close

# Reopen CF hub
execute at @s run function evercraft:craftforever/codex/hub/open
