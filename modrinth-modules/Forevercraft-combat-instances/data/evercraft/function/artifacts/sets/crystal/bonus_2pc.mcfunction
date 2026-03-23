# Crystal 2-Piece Bonus: Damage resistance
# Crystal energy shields you from harm

# Tag player as having 2pc bonus
execute unless entity @s[tag=crystal_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Crystal 2pc: ",color:"light_purple"},{text:"Damage resistance",color:"gray"}]
tag @s add crystal_2pc

# Resistance to all attacks (skip if harmonize is handling 2+ sources)
execute unless score @s ec.h_resist matches 2.. run effect give @s resistance 3 0 false
