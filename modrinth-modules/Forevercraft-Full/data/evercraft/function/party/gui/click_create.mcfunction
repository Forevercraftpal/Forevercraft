# Party GUI — Create Party Button Click
# Run as the interaction entity

# Clear interaction to prevent repeat
data remove entity @s interaction

# Capture session for multiplayer-safe owner lookup
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

# Execute create action as the player
execute as @a[tag=Adv.InMenu,distance=..5] if score @s adv.gui_session = #gui_click_sess ec.temp at @s run function evercraft:party/menu/create

# Respawn management page to reflect new leader state
execute as @a[tag=Adv.InMenu,distance=..5] if score @s adv.gui_session = #gui_click_sess ec.temp at @s run function evercraft:party/gui/respawn_management
