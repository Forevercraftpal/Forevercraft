# Netherwalker 2-Piece Bonus: Fire Resistance
# Passive fire immunity

# Tag player as having 2pc bonus
execute unless entity @s[tag=netherwalker_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Netherwalker 2pc: ",color:"red"},{text:"Fire Resistance",color:"gray"}]
tag @s add netherwalker_2pc

# Apply fire resistance
effect give @s fire_resistance 3 0 false
