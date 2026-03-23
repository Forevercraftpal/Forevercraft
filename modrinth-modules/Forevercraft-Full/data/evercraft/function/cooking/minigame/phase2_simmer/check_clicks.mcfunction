# Phase 2: SIMMER — Check button clicks
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=CK.StokeBtn,distance=..8] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:cooking/minigame/phase2_simmer/on_click_stoke
execute as @e[type=interaction,tag=CK.CoolBtn,distance=..8] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:cooking/minigame/phase2_simmer/on_click_cool
