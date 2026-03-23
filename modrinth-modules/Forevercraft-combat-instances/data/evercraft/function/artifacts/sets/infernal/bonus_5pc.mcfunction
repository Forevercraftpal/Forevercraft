# Infernal 5-Piece Bonus: Infernal Wrath — Strength II
execute unless entity @s[tag=infernal_5pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Infernal 5pc: ",color:"red"},{text:"Infernal Wrath — Strength II",color:"gray"}]
tag @s add infernal_5pc
execute unless score @s ec.h_str matches 2.. run effect give @s strength 3 1 false

# Class bonus: Striker (mainhand mace, no offhand shield) — +2 Attack Damage
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand mace[custom_data~{striker:true}] unless entity @s[tag=inf_striker_5pc] run attribute @s attack_damage modifier add evercraft:inf_striker_5pc_dmg 2 add_value
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand mace[custom_data~{striker:true}] run tag @s add inf_striker_5pc
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=inf_striker_5pc] run attribute @s attack_damage modifier remove evercraft:inf_striker_5pc_dmg
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=inf_striker_5pc] run tag @s remove inf_striker_5pc
execute unless items entity @s weapon.mainhand mace[custom_data~{striker:true}] if entity @s[tag=inf_striker_5pc] run attribute @s attack_damage modifier remove evercraft:inf_striker_5pc_dmg
execute unless items entity @s weapon.mainhand mace[custom_data~{striker:true}] if entity @s[tag=inf_striker_5pc] run tag @s remove inf_striker_5pc

# Class bonus: Sentinel (offhand shield) — Absorption I
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] run effect give @s absorption 3 0 false
