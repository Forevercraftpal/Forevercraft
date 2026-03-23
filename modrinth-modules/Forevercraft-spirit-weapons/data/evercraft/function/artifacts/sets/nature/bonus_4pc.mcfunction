# Nature 4-Piece Bonus: Overgrowth + Nature's Wrath ability
# Command the wild to fight for you

# Check if this is the first time getting 4pc
execute unless entity @s[tag=nature_4pc] run function evercraft:artifacts/sets/nature/grant_ability_item
tag @s add nature_4pc

# Overgrowth aura - poison nearby enemies
effect give @e[type=#evercraft:hostile,distance=..4] poison 2 0 false

# Nature particles
particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.01 2 force @s
