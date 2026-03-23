# Page 3 click detection — Prestige info [?] button
# Run as the player with menu open

# Single [?] button — opens chat class selector for prestige ability details
execute as @e[type=interaction,tag=Adv.PrestigeInfoClick,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/show_prestige_selector
