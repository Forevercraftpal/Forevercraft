# Ender Dragon - Remove 6pc bonus
tag @s remove ender_dragon_6pc
# Downgrade: if still 5pc, keep Strength II + Regen I; if 2pc, keep Resistance I
execute if entity @s[tag=ender_dragon_5pc] unless score @s ec.h_str matches 2.. run effect give @s strength 3 1 false
execute if entity @s[tag=ender_dragon_5pc] unless score @s ec.h_regen matches 2.. run effect give @s regeneration 3 0 false
execute unless entity @s[tag=ender_dragon_5pc] run effect clear @s regeneration
# Downgrade absorption: 5pc tank gets Absorption I; otherwise clear
execute if entity @s[tag=ender_dragon_5pc] if items entity @s weapon.offhand shield[custom_data~{tank:1b}] run effect give @s absorption 3 0 false
execute unless entity @s[tag=ender_dragon_5pc] run effect clear @s absorption
execute if entity @s[tag=ender_dragon_5pc] unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] run effect clear @s absorption
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Voidscale 6pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=ed_knight_6pc] run attribute @s attack_damage modifier remove evercraft:ed_knight_6pc_dmg
execute if entity @s[tag=ed_knight_6pc] run attribute @s entity_interaction_range modifier remove evercraft:ed_knight_6pc_reach
tag @s remove ed_knight_6pc
