# Milestone claim click detection — Origins (page 9)
# Run as the player with menu open

execute as @e[type=interaction,tag=Adv.JnMsClaim1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"1",tier:"rare"}
execute as @e[type=interaction,tag=Adv.JnMsClaim3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"3",tier:"common"}
execute as @e[type=interaction,tag=Adv.JnMsClaim5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"5",tier:"ornate"}
execute as @e[type=interaction,tag=Adv.JnMsClaim6,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"6",tier:"ornate"}
execute as @e[type=interaction,tag=Adv.JnMsClaim7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"7",tier:"exquisite"}
execute as @e[type=interaction,tag=Adv.JnMsClaim8,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"8",tier:"exquisite"}
execute as @e[type=interaction,tag=Adv.JnMsClaim9,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"9",tier:"mythical"}
execute as @e[type=interaction,tag=Adv.JnMsClaim10,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"10",tier:"mythical"}
execute as @e[type=interaction,tag=Adv.JnMsClaim11,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"11",tier:"mythical"}
execute as @e[type=interaction,tag=Adv.JnMsClaim12,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"12",tier:"mythical"}
