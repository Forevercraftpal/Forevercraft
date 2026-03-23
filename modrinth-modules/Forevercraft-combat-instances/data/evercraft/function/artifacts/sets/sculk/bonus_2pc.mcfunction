# Sculk 2-Piece Bonus: Darkness immunity + Vibration sense
# The deep dark empowers you

# Tag player as having 2pc bonus
execute unless entity @s[tag=sculk_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Sculk 2pc: ",color:"dark_aqua"},{text:"Darkness immunity + Vibration sense",color:"gray"}]
tag @s add sculk_2pc

# Clear darkness effect and give night vision
effect clear @s darkness
effect give @s night_vision 13 0 false

# Make nearby hostile mobs glow (vibration sense)
execute as @e[type=#evercraft:hostile,distance=..12] run effect give @s glowing 3 0 false
