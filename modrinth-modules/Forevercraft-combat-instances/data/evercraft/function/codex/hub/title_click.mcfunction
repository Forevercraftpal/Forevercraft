# Codex Hub — Title Click (Realm Statistics)
# Run as the interaction entity that was clicked

# Clear interaction data on the clicked entity
data remove entity @s interaction

# Session-based ownership check
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

# Execute stats display as the menu player
execute as @a[tag=Adv.InMenu,distance=..5] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:stats/codex_overview
