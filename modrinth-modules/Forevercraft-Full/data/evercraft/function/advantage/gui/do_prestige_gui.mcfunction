# Handle prestige from GUI click at Lv.25
# Macro arg: tree_id (1-13)
# Run as the player

# Set the prestige trigger value and route through existing prestige flow
$scoreboard players set @s adv.prestige $(tree_id)
function evercraft:advantage/prestige/triggers

# Refresh the tree display to show new level + star
function evercraft:advantage/gui/refresh
