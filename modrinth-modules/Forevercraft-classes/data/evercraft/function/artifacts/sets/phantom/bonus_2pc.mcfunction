# Phantom 2-Piece Bonus: Slow Falling + No Fall Damage
# Float gently down and take no fall damage

# Tag player as having 2pc bonus
execute unless entity @s[tag=phantom_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Phantom 2pc: ",color:"dark_purple"},{text:"Slow Falling + No Fall Damage",color:"gray"}]
tag @s add phantom_2pc

# Apply slow falling
effect give @s slow_falling 3 0 false
