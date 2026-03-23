# Ember 2-Piece Bonus: Volcanic Blood — Fire Resistance
execute unless entity @s[tag=ember_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Ember 2pc: ",color:"red"},{text:"Volcanic Blood — Fire Resistance",color:"gray"}]
tag @s add ember_2pc
effect give @s fire_resistance 3 0 false
