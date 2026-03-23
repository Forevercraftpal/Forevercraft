# Celestial 4-Piece Bonus: Star Shield + Meteor Strike ability
# Command the power of the cosmos

# Check if this is the first time getting 4pc
execute unless entity @s[tag=celestial_4pc] run function evercraft:artifacts/sets/celestial/grant_ability_item
tag @s add celestial_4pc

# Star shield - resistance (skip if harmonize is handling 2+ sources)
execute unless score @s ec.h_resist matches 2.. run effect give @s resistance 3 0 false

# Starlight particles
particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.02 2 force @s
