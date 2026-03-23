# Craftforever Codex — Enter Section (Macro)
# Run as interaction entity that was clicked

# Clear click data
data remove entity @s interaction

# Get session from clicked entity
scoreboard players operation #cf_click_sess ec.temp = @s ec.cf_gui_session

# Execute as the player who owns this session
$execute as @a[tag=CF.InCodex,distance=..5] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s facing entity @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:craftforever/codex/hub/enter_section_inner {section:$(section)}
