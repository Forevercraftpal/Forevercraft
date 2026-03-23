# Ender Dragon 6-Piece Bonus: Void Emperor — Regeneration II + Absorption III
execute unless entity @s[tag=ender_dragon_6pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Voidscale 6pc: ",color:"dark_purple"},{text:"Void Emperor — Regeneration II + Absorption III",color:"gray"}]
tag @s add ender_dragon_6pc
execute unless score @s ec.h_regen matches 2.. run effect give @s regeneration 3 1 false
effect give @s absorption 3 2 false

# Class bonus: Knight (mainhand sword, no offhand shield) — +3 Attack Damage + +1 Reach
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand #minecraft:swords[custom_data~{awakened:1b}] unless entity @s[tag=ed_knight_6pc] run attribute @s attack_damage modifier add evercraft:ed_knight_6pc_dmg 3 add_value
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand #minecraft:swords[custom_data~{awakened:1b}] unless entity @s[tag=ed_knight_6pc] run attribute @s entity_interaction_range modifier add evercraft:ed_knight_6pc_reach 1 add_value
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand #minecraft:swords[custom_data~{awakened:1b}] run tag @s add ed_knight_6pc
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ed_knight_6pc] run attribute @s attack_damage modifier remove evercraft:ed_knight_6pc_dmg
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ed_knight_6pc] run attribute @s entity_interaction_range modifier remove evercraft:ed_knight_6pc_reach
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ed_knight_6pc] run tag @s remove ed_knight_6pc
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{awakened:1b}] if entity @s[tag=ed_knight_6pc] run attribute @s attack_damage modifier remove evercraft:ed_knight_6pc_dmg
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{awakened:1b}] if entity @s[tag=ed_knight_6pc] run attribute @s entity_interaction_range modifier remove evercraft:ed_knight_6pc_reach
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{awakened:1b}] if entity @s[tag=ed_knight_6pc] run tag @s remove ed_knight_6pc
