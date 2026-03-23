# Classes — Show Class Info Click Handler (Macro)
# Macro arg: class_id (1-13)
# Run as the interaction entity that was clicked
# Displays a tellraw with class description

data remove entity @s interaction

# Session-based ownership check
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

$execute as @a[tag=Adv.InMenu,distance=..5] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:codex/hub/classes/dispatch_info {class_id:$(class_id)}
