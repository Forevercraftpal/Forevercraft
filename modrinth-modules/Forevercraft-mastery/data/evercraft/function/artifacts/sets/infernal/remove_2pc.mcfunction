# Infernal - Remove 2pc bonus
tag @s remove infernal_2pc
effect clear @s resistance
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Infernal 2pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=inf_striker_2pc] run attribute @s attack_damage modifier remove evercraft:inf_striker_2pc_dmg
tag @s remove inf_striker_2pc
execute if entity @s[tag=inf_sentinel_2pc] run attribute @s max_health modifier remove evercraft:inf_sentinel_2pc_hp
tag @s remove inf_sentinel_2pc
