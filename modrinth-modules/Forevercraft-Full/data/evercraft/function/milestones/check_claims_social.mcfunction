# Milestone claim click detection — Social (page 10)
# Run as the player with menu open

execute as @e[type=interaction,tag=Adv.JnMsClaim13,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"13",tier:"ornate"}
execute as @e[type=interaction,tag=Adv.JnMsClaim14,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"14",tier:"exquisite"}
execute as @e[type=interaction,tag=Adv.JnMsClaim15,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"15",tier:"mythical"}
execute as @e[type=interaction,tag=Adv.JnMsClaim16,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"16",tier:"exquisite"}
execute as @e[type=interaction,tag=Adv.JnMsClaim17,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"17",tier:"ornate"}
