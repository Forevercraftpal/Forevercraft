# Milestone claim click detection — Mastery (page 14)
# Run as the player with menu open

execute as @e[type=interaction,tag=Adv.JnMsClaim31,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"31",tier:"mythical"}
execute as @e[type=interaction,tag=Adv.JnMsClaim32,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"32",tier:"ornate"}
execute as @e[type=interaction,tag=Adv.JnMsClaim33,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click {id:"33",tier:"exquisite"}
execute as @e[type=interaction,tag=Adv.JnMsClaim34,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:milestones/claim_click_legacy
