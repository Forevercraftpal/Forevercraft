# Bestiary GUI — Page Navigation (Macro)
# Args: {dir:1} for right, {dir:-1} for left
# Run as the interaction entity, route to nearest matching player

# Clear interaction data
data remove entity @s interaction

# Find the owning player via session
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
$execute as @a[tag=Adv.InMenu,distance=..15] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:bestiary/gui/nav_inner {dir:$(dir)}
