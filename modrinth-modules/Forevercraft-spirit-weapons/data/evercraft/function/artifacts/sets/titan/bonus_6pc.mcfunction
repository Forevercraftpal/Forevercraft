# Tempest 6-Piece Bonus: Tempest's Wrath — Conduit Power + Resistance II
execute unless entity @s[tag=titan_6pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Tempest 6pc: ",color:"light_purple"},{text:"Tempest's Wrath — Conduit Power + Resistance II",color:"gray"}]
tag @s add titan_6pc
effect give @s conduit_power 3 0 false
execute unless score @s ec.h_resist matches 2.. run effect give @s resistance 3 1 false

# Class bonus: Hoplite (offhand shield) — +6 Max Health
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] unless entity @s[tag=ttn_hoplite_6pc] run attribute @s max_health modifier add evercraft:ttn_hoplite_6pc_hp 6 add_value
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] run tag @s add ttn_hoplite_6pc
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ttn_hoplite_6pc] run attribute @s max_health modifier remove evercraft:ttn_hoplite_6pc_hp
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ttn_hoplite_6pc] run tag @s remove ttn_hoplite_6pc
