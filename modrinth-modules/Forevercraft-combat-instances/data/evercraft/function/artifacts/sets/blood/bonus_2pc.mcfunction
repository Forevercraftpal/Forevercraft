# Blood 2-Piece Bonus: Lifesteal on hit
# Your attacks restore health

# Tag player as having 2pc bonus
execute unless entity @s[tag=blood_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Blood 2pc: ",color:"dark_red"},{text:"Lifesteal on hit",color:"gray"}]
tag @s add blood_2pc

# Strength for more damage = more lifesteal (skip if harmonize is handling 2+ sources)
execute unless score @s ec.h_str matches 2.. run effect give @s strength 3 0 false
