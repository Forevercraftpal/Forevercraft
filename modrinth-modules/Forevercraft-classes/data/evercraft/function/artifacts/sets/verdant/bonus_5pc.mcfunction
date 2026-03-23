# Grove 5-Piece Bonus: Bountiful Harvest — Double crop drops
execute unless entity @s[tag=verdant_5pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Grove 5pc: ",color:"light_purple"},{text:"Bountiful Harvest — Double crop drops",color:"gray"}]
tag @s add verdant_5pc
effect give @s luck 3 4 false

# Class bonus: Archer (mainhand bow) — +2 Attack Damage
execute if items entity @s weapon.mainhand bow[custom_data~{awakened:1b}] unless entity @s[tag=vrd_archer_5pc] run attribute @s attack_damage modifier add evercraft:vrd_archer_5pc_dmg 2 add_value
execute if items entity @s weapon.mainhand bow[custom_data~{awakened:1b}] run tag @s add vrd_archer_5pc
execute unless items entity @s weapon.mainhand bow[custom_data~{awakened:1b}] if entity @s[tag=vrd_archer_5pc] run attribute @s attack_damage modifier remove evercraft:vrd_archer_5pc_dmg
execute unless items entity @s weapon.mainhand bow[custom_data~{awakened:1b}] if entity @s[tag=vrd_archer_5pc] run tag @s remove vrd_archer_5pc

# Class bonus: Hunter (mainhand crossbow) — +1 Attack Damage + Speed I
execute if items entity @s weapon.mainhand crossbow[custom_data~{awakened:1b}] unless entity @s[tag=vrd_hunter_5pc] run attribute @s attack_damage modifier add evercraft:vrd_hunter_5pc_dmg 1 add_value
execute if items entity @s weapon.mainhand crossbow[custom_data~{awakened:1b}] run tag @s add vrd_hunter_5pc
execute unless items entity @s weapon.mainhand crossbow[custom_data~{awakened:1b}] if entity @s[tag=vrd_hunter_5pc] run attribute @s attack_damage modifier remove evercraft:vrd_hunter_5pc_dmg
execute unless items entity @s weapon.mainhand crossbow[custom_data~{awakened:1b}] if entity @s[tag=vrd_hunter_5pc] run tag @s remove vrd_hunter_5pc
execute if items entity @s weapon.mainhand crossbow[custom_data~{awakened:1b}] unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false
