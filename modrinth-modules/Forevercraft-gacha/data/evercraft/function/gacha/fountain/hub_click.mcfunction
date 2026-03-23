# Fountain Hub Click — gives fountain item from Codex hub
# Run as the interaction entity that was clicked

# Clear interaction data on the clicked entity
data remove entity @s interaction

# Session-based ownership check
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

# Give the fountain item to the menu player
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:gacha/fountain/give_item
