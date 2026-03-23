# Codex Hub — Help Guide — Show Topic (Macro)
# Macro arg: topic (function name of the topic to display)
# Run as the interaction entity that was clicked

# Clear interaction data
data remove entity @s interaction

# Route back to the owning player via session
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
$execute as @a[tag=Adv.InMenu,distance=..5] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:codex/hub/help/topics/$(topic)
