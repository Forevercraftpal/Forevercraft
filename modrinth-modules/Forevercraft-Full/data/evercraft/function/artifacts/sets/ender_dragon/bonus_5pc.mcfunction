# Ender Dragon 5-Piece Bonus: Dragonborn — Strength II + Regeneration I
execute unless entity @s[tag=ender_dragon_5pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Ender Dragon 5pc: ",color:"dark_purple"},{text:"Dragonborn — Strength II + Regeneration I",color:"gray"}]
tag @s add ender_dragon_5pc
execute unless score @s ec.h_str matches 2.. run effect give @s strength 3 1 false
execute unless score @s ec.h_regen matches 2.. run effect give @s regeneration 3 0 false

# Class bonus: Tank (offhand shield) — Absorption I
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] run effect give @s absorption 3 0 false

# Class bonus: Knight (mainhand sword, no offhand shield) — +2 Attack Damage
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand #minecraft:swords[custom_data~{awakened:1b}] unless entity @s[tag=ed_knight_5pc] run attribute @s attack_damage modifier add evercraft:ed_knight_5pc_dmg 2 add_value
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand #minecraft:swords[custom_data~{awakened:1b}] run tag @s add ed_knight_5pc
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ed_knight_5pc] run attribute @s attack_damage modifier remove evercraft:ed_knight_5pc_dmg
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ed_knight_5pc] run tag @s remove ed_knight_5pc
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{awakened:1b}] if entity @s[tag=ed_knight_5pc] run attribute @s attack_damage modifier remove evercraft:ed_knight_5pc_dmg
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{awakened:1b}] if entity @s[tag=ed_knight_5pc] run tag @s remove ed_knight_5pc
