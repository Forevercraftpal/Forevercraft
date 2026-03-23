# Tempest 5-Piece Bonus: Riptide Surge — Speed I
execute unless entity @s[tag=titan_5pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Tempest 5pc: ",color:"light_purple"},{text:"Riptide Surge — Speed I",color:"gray"}]
tag @s add titan_5pc
execute unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false

# Class bonus: Javelin (mainhand trident, no offhand shield) — +2 Attack Damage
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand trident[custom_data~{awakened:1b}] unless entity @s[tag=ttn_jav_5pc] run attribute @s attack_damage modifier add evercraft:ttn_jav_5pc_dmg 2 add_value
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand trident[custom_data~{awakened:1b}] run tag @s add ttn_jav_5pc
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ttn_jav_5pc] run attribute @s attack_damage modifier remove evercraft:ttn_jav_5pc_dmg
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ttn_jav_5pc] run tag @s remove ttn_jav_5pc
execute unless items entity @s weapon.mainhand trident[custom_data~{awakened:1b}] if entity @s[tag=ttn_jav_5pc] run attribute @s attack_damage modifier remove evercraft:ttn_jav_5pc_dmg
execute unless items entity @s weapon.mainhand trident[custom_data~{awakened:1b}] if entity @s[tag=ttn_jav_5pc] run tag @s remove ttn_jav_5pc

# Class bonus: Hoplite (offhand shield) — Resistance I
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] unless score @s ec.h_resist matches 2.. run effect give @s resistance 3 0 false
