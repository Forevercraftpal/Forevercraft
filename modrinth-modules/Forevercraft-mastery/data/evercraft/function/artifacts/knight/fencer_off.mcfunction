# Knight Fencing Stance — Remove Bonuses

attribute @s minecraft:attack_damage modifier remove evercraft:fencer_damage
attribute @s minecraft:entity_interaction_range modifier remove evercraft:fencer_reach
scoreboard players set @s ec.kt_fencer 0

playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 0.6 0.8
title @s actionbar [{"text":"Tank Mode","color":"#4A90D9","bold":true},{"text":" — shield raised","color":"white","bold":false}]
