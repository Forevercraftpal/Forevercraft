# Milestone claim click detection — Adventure (page 12)
# Run as the player with menu open

execute as @e[type=interaction,tag=Adv.JnMsClaim23,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"23",tier:"exquisite"}
execute as @e[type=interaction,tag=Adv.JnMsClaim24,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"24",tier:"ornate"}
execute as @e[type=interaction,tag=Adv.JnMsClaim25,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"25",tier:"exquisite"}
execute as @e[type=interaction,tag=Adv.JnMsClaim26,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"26",tier:"ornate"}
