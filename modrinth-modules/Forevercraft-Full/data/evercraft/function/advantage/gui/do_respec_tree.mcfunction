# Execute respec for a tree from the GUI overlay
# Macro arg: tree_id (1-13)
# Run as the interaction entity

# Clear interaction data
data remove entity @s interaction

# Capture session for multiplayer-safe owner lookup
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

# Run as the menu player — set respec scoreboard and call existing pipeline
$execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run scoreboard players set @s adv.respec $(tree_id)
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:advantage/respec/triggers

# Reset trigger and exit respec mode (back to normal page 1)
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run scoreboard players set @s adv.respec 0
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:advantage/gui/exit_respec_internal
