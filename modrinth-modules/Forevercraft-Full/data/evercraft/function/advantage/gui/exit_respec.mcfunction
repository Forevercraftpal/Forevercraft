# Cancel respec — run as the interaction entity (Adv.RespecCancelClick)

# Clear interaction data
data remove entity @s interaction

# Capture session for multiplayer-safe owner lookup
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

# Exit respec mode as the menu player
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:advantage/gui/exit_respec_internal
