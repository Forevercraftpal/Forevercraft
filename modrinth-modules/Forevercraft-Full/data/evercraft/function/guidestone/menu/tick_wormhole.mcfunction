# Guidestone Menu — Wormhole page tick (check confirm click)
# Run as player at their position (already verified in_menu and wormhole_view)

# Check Wormhole confirm click — executes wormhole teleport
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=ec.gs_wh_confirm,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guidestone/wormhole/on_confirm
