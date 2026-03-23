# Classes — Artifact Slot Click Handler (Macro)
# Macro arg: slot (0-12)
# Run as the interaction entity that was clicked
# Dispatches to the correct class detail function based on adv.gui_cls_id

data remove entity @s interaction

# Session-based ownership check
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

$execute as @a[tag=Adv.InMenu,distance=..5] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:codex/hub/classes/dispatch_detail {slot:$(slot)}
