# Ender Dragon - Remove 5pc bonus
tag @s remove ender_dragon_5pc
# Downgrade: if still 2pc, keep Resistance I
execute unless entity @s[tag=ender_dragon_2pc] run effect clear @s resistance
effect clear @s strength
effect clear @s regeneration
effect clear @s absorption
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Ender Dragon 5pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=ed_knight_5pc] run attribute @s attack_damage modifier remove evercraft:ed_knight_5pc_dmg
tag @s remove ed_knight_5pc
