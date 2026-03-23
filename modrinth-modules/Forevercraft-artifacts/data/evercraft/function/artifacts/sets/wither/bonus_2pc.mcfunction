# Wither 2-Piece Bonus: Wither Immunity + Lifesteal
# Immune to wither effect, heal when dealing damage

# Tag player as having 2pc bonus
execute unless entity @s[tag=wither_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Wither 2pc: ",color:"dark_gray"},{text:"Wither Immunity + Lifesteal",color:"gray"}]
tag @s add wither_2pc

# Clear wither effect
effect clear @s wither
