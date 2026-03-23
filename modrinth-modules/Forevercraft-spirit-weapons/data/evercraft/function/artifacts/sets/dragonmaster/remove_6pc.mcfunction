# Dragonmaster - Remove 6pc bonus
tag @s remove dragonmaster_6pc
# Downgrade: if still 5pc, keep Strength II; if 2pc, keep Strength I; otherwise clear
execute if entity @s[tag=dragonmaster_5pc] unless score @s ec.h_str matches 2.. run effect give @s strength 3 1 false
execute unless entity @s[tag=dragonmaster_5pc] if entity @s[tag=dragonmaster_2pc] unless score @s ec.h_str matches 2.. run effect give @s strength 3 0 false
execute unless entity @s[tag=dragonmaster_5pc] unless entity @s[tag=dragonmaster_2pc] run effect clear @s strength
effect clear @s fire_resistance
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Wyrmrider 6pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=dm_berserker_6pc] run attribute @s attack_damage modifier remove evercraft:dm_berserker_6pc_dmg
tag @s remove dm_berserker_6pc
execute if entity @s[tag=dm_dancer_6pc] run attribute @s attack_speed modifier remove evercraft:dm_dancer_6pc_aspd
tag @s remove dm_dancer_6pc
