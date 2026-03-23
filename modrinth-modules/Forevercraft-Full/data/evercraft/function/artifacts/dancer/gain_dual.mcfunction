# Dancer — Gained offhand gauntlet (was single, now dual)
scoreboard players set @s ec.dn_dual 1

# Update evasion bonus tracker (applied in evasion_check, not adv.evasion)
scoreboard players set @s ec.dn_evasion_add 40

# Update tier if offhand is higher
execute if items entity @s weapon.offhand *[custom_data~{tier:"uncommon",dancer:true}] if score @s ec.dn_tier matches ..1 run scoreboard players set @s ec.dn_tier 2
execute if items entity @s weapon.offhand *[custom_data~{tier:"rare",dancer:true}] if score @s ec.dn_tier matches ..2 run scoreboard players set @s ec.dn_tier 3
execute if items entity @s weapon.offhand *[custom_data~{tier:"ornate",dancer:true}] if score @s ec.dn_tier matches ..3 run scoreboard players set @s ec.dn_tier 4
execute if items entity @s weapon.offhand *[custom_data~{tier:"exquisite",dancer:true}] if score @s ec.dn_tier matches ..4 run scoreboard players set @s ec.dn_tier 5
execute if items entity @s weapon.offhand *[custom_data~{tier:"mythical",dancer:true}] if score @s ec.dn_tier matches ..5 run scoreboard players set @s ec.dn_tier 6

playsound minecraft:entity.breeze.wind_burst player @s ~ ~ ~ 0.4 1.8
title @s actionbar [{"text":"Dual Gauntlets","color":"light_purple","bold":true},{"text":" — flurry unlocked","color":"white","bold":false}]
