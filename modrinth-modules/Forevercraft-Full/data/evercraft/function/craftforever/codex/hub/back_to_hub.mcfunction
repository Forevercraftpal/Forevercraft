# Craftforever Codex — Return to hub from any section
# Run as interaction entity (back button) that was clicked

# Clear click data
data remove entity @s interaction

# Get session
scoreboard players operation #cf_click_sess ec.temp = @s ec.cf_gui_session

# Execute as owning player
execute as @a[tag=CF.InCodex,distance=..5] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run function evercraft:craftforever/codex/hub/back_to_hub_inner
