# Enter Respec Mode — run as the interaction entity (Adv.RespecBtnClick)
# Validates prerequisites then shows respec overlay

# Clear interaction data
data remove entity @s interaction

# Capture session for multiplayer-safe owner lookup
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

# Run validation and overlay as nearest menu player
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:advantage/gui/enter_respec_validated
