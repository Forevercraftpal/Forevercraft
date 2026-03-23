# Craftforever Codex — Bridge to FC Hub (Macro)
# Closes CF shell and opens FC hub at the specified section
# Used for shared pages (Milestones, Travel Journal, Cosmetics, Lore)
# Macro arg: section (FC section number)
# Run as: interaction entity

data remove entity @s interaction
scoreboard players operation #cf_click_sess ec.temp = @s ec.cf_gui_session

# Run the bridge as the owning player
$execute as @a[tag=CF.InCodex,distance=..5] if score @s ec.cf_gui_session = #cf_click_sess ec.temp at @s run function evercraft:craftforever/codex/hub/bridge_to_fc_inner {section:$(section)}
