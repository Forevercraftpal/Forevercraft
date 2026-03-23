# Codex Hub — Enter Section (Macro)
# Macro arg: section (1=advantage, 2=challenges, 3=cosmetics, 4=artifacts, 5=journal)
# Run as the interaction entity that was clicked

# Clear interaction data on the clicked entity
data remove entity @s interaction

# Session-based ownership check
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

# Execute as the owning menu player, facing the anchor so content aligns with background panel
$execute as @a[tag=Adv.InMenu,distance=..5] if score @s adv.gui_session = #gui_click_sess ec.temp at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/hub/enter_section_inner {section:$(section)}
