# Golem 4-Piece Bonus: Iron Will + Golem Smash ability
# Become an unstoppable force

# Check if this is the first time getting 4pc
execute unless entity @s[tag=golem_4pc] run function evercraft:artifacts/sets/golem/grant_ability_item
tag @s add golem_4pc

# Iron Will - increased attack damage and strength (skip if harmonize is handling 2+ sources)
execute unless score @s ec.h_str matches 2.. run effect give @s strength 3 0 false

# Iron particles
particle crit ~ ~1 ~ 0.3 0.3 0.3 0.01 1 force @s
