# Artifact Collection — Random Browse Button Clicked
# Run as the interaction entity
data remove entity @s interaction
# Session-based ownership check
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
execute as @a[tag=Adv.InMenu,distance=..5] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:codex/hub/artifacts/random_browse
