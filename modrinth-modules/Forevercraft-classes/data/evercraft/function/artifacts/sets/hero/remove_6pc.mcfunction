# Hero's Eternal - Remove 6pc bonus
tag @s remove hero_6pc
# Downgrade effects
execute if entity @s[tag=hero_5pc] unless score @s ec.h_str matches 2.. run effect give @s strength 3 0 false
execute if entity @s[tag=hero_5pc] unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false
execute unless entity @s[tag=hero_5pc] if entity @s[tag=hero_2pc] unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false
execute unless entity @s[tag=hero_5pc] unless entity @s[tag=hero_2pc] run effect clear @s speed
execute unless entity @s[tag=hero_5pc] run effect clear @s strength
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Eternal 6pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=hero_dancer_6pc] run attribute @s attack_speed modifier remove evercraft:hero_dancer_6pc_aspd
tag @s remove hero_dancer_6pc
