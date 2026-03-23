# Difficulty button click handler — run as the interaction entity
# Routes back to the owning player, checks lock, shows prompt or status

data remove entity @s interaction
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:difficulty/help_menu_action
