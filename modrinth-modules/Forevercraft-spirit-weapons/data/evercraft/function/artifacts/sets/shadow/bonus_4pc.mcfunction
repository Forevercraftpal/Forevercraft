# Shadow 4-Piece Bonus: Shadow Cloak + Assassinate ability
# Strike from the shadows with deadly precision

# Check if this is the first time getting 4pc
execute unless entity @s[tag=shadow_4pc] run function evercraft:artifacts/sets/shadow/grant_ability_item
tag @s add shadow_4pc

# Shadow cloak - always have speed (skip if harmonize is handling 2+ sources)
execute unless score @s ec.h_speed matches 2.. run effect give @s speed 3 1 false

# Apply invisibility when sneaking (4pc version lasts longer)
execute if entity @s[predicate=evercraft:sneaking] run effect give @s invisibility 3 0 false

# Shadow particles
particle ash ~ ~1 ~ 0.3 0.5 0.3 0.01 2 force @s
