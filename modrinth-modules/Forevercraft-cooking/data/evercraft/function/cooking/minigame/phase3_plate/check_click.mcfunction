# Phase 3: PLATE — Check for button click
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=CK.PlateBtn,distance=..8] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:cooking/minigame/phase3_plate/on_click
