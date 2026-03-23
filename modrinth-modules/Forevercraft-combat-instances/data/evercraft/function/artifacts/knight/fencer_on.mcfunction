# Knight Fencing Stance — Apply Bonuses
# +2 attack damage, +1 entity interaction range (reach)

attribute @s minecraft:attack_damage modifier add evercraft:fencer_damage 2 add_value
attribute @s minecraft:entity_interaction_range modifier add evercraft:fencer_reach 1 add_value
scoreboard players set @s ec.kt_fencer 1

playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 0.6 1.5
title @s actionbar [{"text":"Knight Mode, ","color":"gold","bold":true},{"text":"Fencing Stance","color":"#C0A040","bold":true},{"text":" — active","color":"yellow","bold":false}]
