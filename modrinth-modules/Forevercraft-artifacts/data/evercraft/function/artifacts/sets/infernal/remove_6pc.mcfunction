# Infernal - Remove 6pc bonus
tag @s remove infernal_6pc
# Downgrade: if still 5pc, keep Strength II; if 2pc, keep Resistance I; otherwise clear
execute if entity @s[tag=infernal_5pc] unless score @s ec.h_str matches 2.. run effect give @s strength 3 1 false
execute unless entity @s[tag=infernal_5pc] run effect clear @s strength
execute unless entity @s[tag=infernal_2pc] run effect clear @s resistance
effect clear @s fire_resistance
# Re-apply 5pc sentinel absorption if still 5pc
execute if entity @s[tag=infernal_5pc] if items entity @s weapon.offhand shield[custom_data~{tank:1b}] run effect give @s absorption 3 0 false
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Infernal 6pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=inf_sentinel_6pc] run attribute @s armor modifier remove evercraft:inf_sentinel_6pc_armor
tag @s remove inf_sentinel_6pc
