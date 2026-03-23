# Frost 2-Piece Bonus: Freeze Attackers
# Attackers get slowed when hitting you

# Tag player as having 2pc bonus
execute unless entity @s[tag=frost_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Frost 2pc: ",color:"aqua"},{text:"Freeze Attackers (slowness on hit)",color:"gray"}]
tag @s add frost_2pc
