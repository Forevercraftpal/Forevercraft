# Milestone claim click detection — Combat (page 13)
# Run as the player with menu open

execute as @e[type=interaction,tag=Adv.JnMsClaim27,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"27",tier:"exquisite"}
execute as @e[type=interaction,tag=Adv.JnMsClaim28,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"28",tier:"mythical"}
execute as @e[type=interaction,tag=Adv.JnMsClaim29,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"29",tier:"ornate"}
execute as @e[type=interaction,tag=Adv.JnMsClaim30,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"30",tier:"exquisite"}
