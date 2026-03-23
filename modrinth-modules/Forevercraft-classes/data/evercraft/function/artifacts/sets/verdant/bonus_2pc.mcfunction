# Grove 2-Piece Bonus: Nature's Embrace — Saturation I
execute unless entity @s[tag=verdant_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Grove 2pc: ",color:"light_purple"},{text:"Nature's Embrace — Saturation I",color:"gray"}]
tag @s add verdant_2pc
effect give @s saturation 3 0 false

# Class bonus: Archer (mainhand bow) — +1 Attack Damage
execute if items entity @s weapon.mainhand bow[custom_data~{awakened:1b}] unless entity @s[tag=vrd_archer_2pc] run attribute @s attack_damage modifier add evercraft:vrd_archer_2pc_dmg 1 add_value
execute if items entity @s weapon.mainhand bow[custom_data~{awakened:1b}] run tag @s add vrd_archer_2pc
execute unless items entity @s weapon.mainhand bow[custom_data~{awakened:1b}] if entity @s[tag=vrd_archer_2pc] run attribute @s attack_damage modifier remove evercraft:vrd_archer_2pc_dmg
execute unless items entity @s weapon.mainhand bow[custom_data~{awakened:1b}] if entity @s[tag=vrd_archer_2pc] run tag @s remove vrd_archer_2pc

# Class bonus: Hunter (mainhand crossbow) — +15% Attack Speed
execute if items entity @s weapon.mainhand crossbow[custom_data~{awakened:1b}] unless entity @s[tag=vrd_hunter_2pc] run attribute @s attack_speed modifier add evercraft:vrd_hunter_2pc_aspd 0.15 add_multiplied_base
execute if items entity @s weapon.mainhand crossbow[custom_data~{awakened:1b}] run tag @s add vrd_hunter_2pc
execute unless items entity @s weapon.mainhand crossbow[custom_data~{awakened:1b}] if entity @s[tag=vrd_hunter_2pc] run attribute @s attack_speed modifier remove evercraft:vrd_hunter_2pc_aspd
execute unless items entity @s weapon.mainhand crossbow[custom_data~{awakened:1b}] if entity @s[tag=vrd_hunter_2pc] run tag @s remove vrd_hunter_2pc
