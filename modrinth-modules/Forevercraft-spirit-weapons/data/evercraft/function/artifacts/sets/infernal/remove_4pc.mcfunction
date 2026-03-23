# Infernal - Remove 4pc bonus
tag @s remove infernal_4pc
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Infernal 4pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=inf_striker_4pc] run attribute @s attack_speed modifier remove evercraft:inf_striker_4pc_aspd
tag @s remove inf_striker_4pc
execute if entity @s[tag=inf_sentinel_4pc] run attribute @s knockback_resistance modifier remove evercraft:inf_sentinel_4pc_kb
tag @s remove inf_sentinel_4pc
