# Ender Dragon 2-Piece Bonus: Dragon Scales — Resistance I
execute unless entity @s[tag=ender_dragon_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Ender Dragon 2pc: ",color:"dark_purple"},{text:"Dragon Scales — Resistance I",color:"gray"}]
tag @s add ender_dragon_2pc
execute unless score @s ec.h_resist matches 2.. run effect give @s resistance 3 0 false

# Class bonus: Tank (offhand shield) — +4 Max Health
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] unless entity @s[tag=ed_tank_2pc] run attribute @s max_health modifier add evercraft:ed_tank_2pc_hp 4 add_value
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] run tag @s add ed_tank_2pc
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ed_tank_2pc] run attribute @s max_health modifier remove evercraft:ed_tank_2pc_hp
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ed_tank_2pc] run tag @s remove ed_tank_2pc

# Class bonus: Knight (mainhand sword, no offhand shield) — +1 Attack Damage
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand #minecraft:swords[custom_data~{awakened:1b}] unless entity @s[tag=ed_knight_2pc] run attribute @s attack_damage modifier add evercraft:ed_knight_2pc_dmg 1 add_value
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand #minecraft:swords[custom_data~{awakened:1b}] run tag @s add ed_knight_2pc
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ed_knight_2pc] run attribute @s attack_damage modifier remove evercraft:ed_knight_2pc_dmg
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ed_knight_2pc] run tag @s remove ed_knight_2pc
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{awakened:1b}] if entity @s[tag=ed_knight_2pc] run attribute @s attack_damage modifier remove evercraft:ed_knight_2pc_dmg
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{awakened:1b}] if entity @s[tag=ed_knight_2pc] run tag @s remove ed_knight_2pc
