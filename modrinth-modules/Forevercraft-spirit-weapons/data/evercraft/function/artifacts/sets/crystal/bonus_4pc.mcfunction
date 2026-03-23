# Crystal 4-Piece Bonus: Prism Shield + Crystal Shatter ability
# Reflect damage and shatter enemies with crystal magic

# Check if this is the first time getting 4pc
execute unless entity @s[tag=crystal_4pc] run function evercraft:artifacts/sets/crystal/grant_ability_item
tag @s add crystal_4pc

# Prism shield - strong resistance (skip if harmonize is handling 2+ sources)
execute unless score @s ec.h_resist matches 2.. run effect give @s resistance 3 1 false

# Crystal particles
particle dust{color:[0.8,0.5,1.0],scale:0.8} ~ ~1 ~ 0.3 0.5 0.3 0.02 2 force @s
