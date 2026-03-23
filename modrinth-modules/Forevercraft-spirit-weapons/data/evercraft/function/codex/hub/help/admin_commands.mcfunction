# Codex Hub — Help Guide — Admin Command Panel
# Run as the interaction entity that was clicked
# Outputs admin commands to chat (tellraw with clickable buttons)
# Gated behind ec.admin tag

# Clear interaction data
data remove entity @s interaction

# Route back to the owning player via session
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
execute as @a[tag=Adv.InMenu,distance=..5] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:codex/hub/help/admin_panel
