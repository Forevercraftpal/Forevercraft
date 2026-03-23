# Infernal 2-Piece Bonus: Infernal Resilience — Resistance I
execute unless entity @s[tag=infernal_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Infernal 2pc: ",color:"red"},{text:"Infernal Resilience — Resistance I",color:"gray"}]
tag @s add infernal_2pc
execute unless score @s ec.h_resist matches 2.. run effect give @s resistance 3 0 false

# Class bonus: Striker (mainhand mace, no offhand shield) — +1 Attack Damage
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand mace[custom_data~{striker:true}] unless entity @s[tag=inf_striker_2pc] run attribute @s attack_damage modifier add evercraft:inf_striker_2pc_dmg 1 add_value
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand mace[custom_data~{striker:true}] run tag @s add inf_striker_2pc
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=inf_striker_2pc] run attribute @s attack_damage modifier remove evercraft:inf_striker_2pc_dmg
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=inf_striker_2pc] run tag @s remove inf_striker_2pc
execute unless items entity @s weapon.mainhand mace[custom_data~{striker:true}] if entity @s[tag=inf_striker_2pc] run attribute @s attack_damage modifier remove evercraft:inf_striker_2pc_dmg
execute unless items entity @s weapon.mainhand mace[custom_data~{striker:true}] if entity @s[tag=inf_striker_2pc] run tag @s remove inf_striker_2pc

# Class bonus: Sentinel (offhand shield) — +4 Max Health
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] unless entity @s[tag=inf_sentinel_2pc] run attribute @s max_health modifier add evercraft:inf_sentinel_2pc_hp 4 add_value
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] run tag @s add inf_sentinel_2pc
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=inf_sentinel_2pc] run attribute @s max_health modifier remove evercraft:inf_sentinel_2pc_hp
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=inf_sentinel_2pc] run tag @s remove inf_sentinel_2pc
