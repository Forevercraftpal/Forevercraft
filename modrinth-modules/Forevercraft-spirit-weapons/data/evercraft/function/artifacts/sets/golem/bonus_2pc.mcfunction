# Golem 2-Piece Bonus: Knockback resistance + Mining speed
# Built like an iron fortress

# Tag player as having 2pc bonus
execute unless entity @s[tag=golem_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Golem 2pc: ",color:"white"},{text:"Knockback resist + Mining speed",color:"gray"}]
tag @s add golem_2pc

# Mining speed (haste) - skip if harmonize is handling 2+ sources
execute unless score @s ec.h_haste matches 2.. run effect give @s haste 3 1 false

# Extra knockback resistance through resistance effect - skip if harmonize is handling 2+ sources
execute unless score @s ec.h_resist matches 2.. run effect give @s resistance 3 0 false
