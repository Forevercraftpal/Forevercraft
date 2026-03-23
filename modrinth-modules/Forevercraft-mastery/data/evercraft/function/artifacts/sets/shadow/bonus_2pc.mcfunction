# Shadow 2-Piece Bonus: Invisibility on sneak
# Become invisible when sneaking

# Tag player as having 2pc bonus
execute unless entity @s[tag=shadow_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Shadow 2pc: ",color:"dark_gray"},{text:"Invisibility on sneak",color:"gray"}]
tag @s add shadow_2pc

# Speed for stealthy movement
# Only apply if harmonize isn't handling it (single source)
execute unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false

# Apply invisibility when sneaking
execute if entity @s[predicate=evercraft:sneaking] run effect give @s invisibility 2 0 false
