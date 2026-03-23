# Phase 1: CHOP — Check for button click
# Runs as the player

scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=CK.ChopBtn,distance=..8] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:cooking/minigame/phase1_chop/on_click
