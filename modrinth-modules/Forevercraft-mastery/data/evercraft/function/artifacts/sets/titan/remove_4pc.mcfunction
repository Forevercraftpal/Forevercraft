# Tempest - Remove 4pc bonus
tag @s remove titan_4pc
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Tempest 4pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=ttn_hop_4pc] run attribute @s knockback_resistance modifier remove evercraft:ttn_hop_4pc_kb
tag @s remove ttn_hop_4pc
