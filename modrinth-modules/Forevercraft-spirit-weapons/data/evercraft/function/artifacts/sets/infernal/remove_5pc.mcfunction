# Infernal - Remove 5pc bonus
tag @s remove infernal_5pc
# Downgrade: if still 2pc, keep Resistance I
execute unless entity @s[tag=infernal_2pc] run effect clear @s resistance
effect clear @s strength
effect clear @s absorption
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Infernal 5pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=inf_striker_5pc] run attribute @s attack_damage modifier remove evercraft:inf_striker_5pc_dmg
tag @s remove inf_striker_5pc
