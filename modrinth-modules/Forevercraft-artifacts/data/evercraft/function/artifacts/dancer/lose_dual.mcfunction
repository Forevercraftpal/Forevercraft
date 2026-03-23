# Dancer — Lost offhand gauntlet (was dual, now single)
scoreboard players set @s ec.dn_dual 0

# Update evasion bonus tracker (applied in evasion_check, not adv.evasion)
scoreboard players set @s ec.dn_evasion_add 20

# If flurry is active, force-end it (requires dual wield)
execute if score @s ec.dn_flurry matches 1.. run function evercraft:artifacts/dancer/deactivate_flurry

# Recalculate tier from mainhand only
scoreboard players set @s ec.dn_tier 1
execute if items entity @s weapon.mainhand *[custom_data~{tier:"uncommon"}] run scoreboard players set @s ec.dn_tier 2
execute if items entity @s weapon.mainhand *[custom_data~{tier:"rare"}] run scoreboard players set @s ec.dn_tier 3
execute if items entity @s weapon.mainhand *[custom_data~{tier:"ornate"}] run scoreboard players set @s ec.dn_tier 4
execute if items entity @s weapon.mainhand *[custom_data~{tier:"exquisite"}] run scoreboard players set @s ec.dn_tier 5
execute if items entity @s weapon.mainhand *[custom_data~{tier:"mythical"}] run scoreboard players set @s ec.dn_tier 6

playsound minecraft:entity.breeze.wind_burst player @s ~ ~ ~ 0.4 0.8
title @s actionbar [{"text":"Dancer Mode","color":"light_purple","bold":true},{"text":" — single gauntlet","color":"white","bold":false}]
