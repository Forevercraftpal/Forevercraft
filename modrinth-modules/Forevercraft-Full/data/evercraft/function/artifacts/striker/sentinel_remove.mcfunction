# Sentinel Removal — Shield removed from offhand
# Run as player who was ec.sk_sentinel but lost their shield

tag @s remove ec.sk_sentinel

# Add consumable back to mace for right-click impact
item modify entity @s weapon.mainhand evercraft:add_striker_consumable

# Clear Resistance and Weakness (natural expiry from 2s duration, but clear for instant feedback)
effect clear @s resistance
effect clear @s weakness

playsound minecraft:entity.iron_golem.attack player @s ~ ~ ~ 0.5 0.8
title @s actionbar [{"text":"Striker Mode","color":"gold","bold":true},{"text":" — active","color":"yellow","bold":false}]
