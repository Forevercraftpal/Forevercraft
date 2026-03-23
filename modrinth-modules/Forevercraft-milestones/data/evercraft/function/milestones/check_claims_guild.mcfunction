# Milestone claim click detection — Guild & Warfare (page 11)
# Run as the player with menu open

execute as @e[type=interaction,tag=Adv.JnMsClaim18,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"18",tier:"rare"}
execute as @e[type=interaction,tag=Adv.JnMsClaim19,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"19",tier:"exquisite"}
execute as @e[type=interaction,tag=Adv.JnMsClaim20,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"20",tier:"ornate"}
execute as @e[type=interaction,tag=Adv.JnMsClaim21,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"21",tier:"mythical"}
execute as @e[type=interaction,tag=Adv.JnMsClaim22,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"22",tier:"exquisite"}
