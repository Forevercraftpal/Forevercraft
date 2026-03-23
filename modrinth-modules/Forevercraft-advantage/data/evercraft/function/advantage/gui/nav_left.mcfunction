# Navigation: Left arrow click — previous page
# Run as the interaction entity, at its position

# Clear interaction data
data remove entity @s interaction

# Capture session for multiplayer-safe owner lookup
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

# Switch page as the player, facing the anchor (preserves original menu orientation)
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:advantage/gui/switch_page {operation:"remove"}
