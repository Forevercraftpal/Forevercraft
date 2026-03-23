# Party GUI — Invite Nearby Button Click
# Run as the interaction entity

# Clear interaction to prevent repeat
data remove entity @s interaction

# Capture session for multiplayer-safe owner lookup
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

# Execute invite scan as the player
execute as @a[tag=Adv.InMenu,distance=..5] if score @s adv.gui_session = #gui_click_sess ec.temp at @s run function evercraft:party/invite/scan

# Respawn management page to reflect state change
execute as @a[tag=Adv.InMenu,distance=..5] if score @s adv.gui_session = #gui_click_sess ec.temp at @s run function evercraft:party/gui/respawn_management
