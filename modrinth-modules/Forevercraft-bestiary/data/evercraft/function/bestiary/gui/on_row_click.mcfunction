# Bestiary GUI — On Row Click (Macro)
# Args: {row:0}
# Run as the interaction entity

# Clear interaction
data remove entity @s interaction

# Route to player
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
$execute as @a[tag=Adv.InMenu,distance=..15] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:bestiary/gui/on_row_click_inner {row:$(row)}
