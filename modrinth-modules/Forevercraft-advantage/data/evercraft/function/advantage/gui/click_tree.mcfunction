# Handle tree click — run as the interaction entity
# Macro arg: tree_id (1-13, matching adv.levelup trigger values)
# Find the nearest player with menu open and run their levelup

# Clear interaction data so click doesn't repeat
data remove entity @s interaction

# Capture session for multiplayer-safe owner lookup
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

# Route to the correct levelup function, run as the menu player
$execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:advantage/gui/do_levelup {tree_id:$(tree_id)}
