# Handle boss title click — run as the interaction entity
# Macro arg: boss_id (1-11)
# Clear interaction data, then route to player for actual logic

# Clear interaction data so click doesn't repeat
data remove entity @s interaction

# Capture session for multiplayer-safe owner lookup
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

# Route to the nearest menu player
$execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:advantage/gui/do_boss_title {boss_id:$(boss_id)}
