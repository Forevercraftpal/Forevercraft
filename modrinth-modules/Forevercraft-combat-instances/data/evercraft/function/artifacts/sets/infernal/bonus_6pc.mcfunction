# Infernal 6-Piece Bonus: Infernal Incarnate — Fire Resistance + Strength II
execute unless entity @s[tag=infernal_6pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Infernal 6pc: ",color:"red"},{text:"Infernal Incarnate — Fire Resistance + Strength II",color:"gray"}]
tag @s add infernal_6pc
effect give @s fire_resistance 3 0 false
execute unless score @s ec.h_str matches 2.. run effect give @s strength 3 1 false

# Class bonus: Sentinel (offhand shield) — +6 Armor + Resistance II
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] unless entity @s[tag=inf_sentinel_6pc] run attribute @s armor modifier add evercraft:inf_sentinel_6pc_armor 6 add_value
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] run tag @s add inf_sentinel_6pc
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=inf_sentinel_6pc] run attribute @s armor modifier remove evercraft:inf_sentinel_6pc_armor
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=inf_sentinel_6pc] run tag @s remove inf_sentinel_6pc
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] unless score @s ec.h_resist matches 2.. run effect give @s resistance 3 1 false
