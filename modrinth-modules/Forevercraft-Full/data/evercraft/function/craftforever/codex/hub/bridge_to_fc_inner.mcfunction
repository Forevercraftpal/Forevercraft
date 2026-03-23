# Craftforever Codex — Bridge Inner (Macro)
# Run as: the player holding CF codex, at player
# Macro arg: section

# Close CF shell cleanly
function evercraft:craftforever/codex/hub/close

# Tag player as coming from CF bridge (back button should return to CF hub, not FC hub)
tag @s add ec.cf_bridge_active

# Open FC hub (spawns shell, sets Adv.InMenu)
function evercraft:codex/hub/open

# Navigate to the shared section
$function evercraft:codex/hub/enter_section_inner {section:$(section)}
