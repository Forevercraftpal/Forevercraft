# Classes — Back to Classes Click Handler
# Run as the interaction entity that was clicked

data remove entity @s interaction

# Session-based ownership check
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

execute as @a[tag=Adv.InMenu,distance=..5] if score @s adv.gui_session = #gui_click_sess ec.temp at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/hub/classes/back_to_classes
