# Blood 4-Piece Bonus: Blood Frenzy + Crimson Burst ability
# The more you fight, the stronger you become

# Check if this is the first time getting 4pc
execute unless entity @s[tag=blood_4pc] run function evercraft:artifacts/sets/blood/grant_ability_item
tag @s add blood_4pc

# Blood frenzy - attack speed and damage (skip if harmonize is handling 2+ sources)
execute unless score @s ec.h_str matches 2.. run effect give @s strength 3 1 false
execute unless score @s ec.h_haste matches 2.. run effect give @s haste 3 0 false

# Blood particles
particle dust{color:[0.5,0.0,0.0],scale:1.0} ~ ~1 ~ 0.3 0.5 0.3 0.01 2 force @s
