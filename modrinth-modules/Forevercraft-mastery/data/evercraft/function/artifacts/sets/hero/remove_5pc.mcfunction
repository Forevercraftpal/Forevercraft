# Hero's Eternal - Remove 5pc bonus
tag @s remove hero_5pc
# Downgrade: if still 2pc, keep Speed I; otherwise clear
execute if entity @s[tag=hero_2pc] unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false
execute unless entity @s[tag=hero_2pc] run effect clear @s speed
effect clear @s strength
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Eternal 5pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=hero_dancer_5pc] run attribute @s attack_speed modifier remove evercraft:hero_dancer_5pc_aspd
tag @s remove hero_dancer_5pc
