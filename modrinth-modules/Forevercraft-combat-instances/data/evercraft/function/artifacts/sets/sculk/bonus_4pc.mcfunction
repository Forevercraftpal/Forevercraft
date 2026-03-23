# Sculk 4-Piece Bonus: Warden's Might + Sonic Boom ability
# Command the power of the ancient city

# Check if this is the first time getting 4pc
execute unless entity @s[tag=sculk_4pc] run function evercraft:artifacts/sets/sculk/grant_ability_item
tag @s add sculk_4pc

# Warden's might - strength (skip if harmonize is handling 2+ sources)
execute unless score @s ec.h_str matches 2.. run effect give @s strength 3 0 false

# Sculk particles
particle sculk_charge_pop ~ ~1 ~ 0.3 0.3 0.3 0.01 2 force @s
