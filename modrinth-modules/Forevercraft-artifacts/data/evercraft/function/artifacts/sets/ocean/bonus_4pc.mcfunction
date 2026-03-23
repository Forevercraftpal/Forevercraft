# Ocean 4-Piece Bonus: Conduit Power + Tidal Wave ability
# Master of the ocean depths

# Check if this is the first time getting 4pc
execute unless entity @s[tag=ocean_4pc] run function evercraft:artifacts/sets/ocean/grant_ability_item
tag @s add ocean_4pc

# Apply conduit power
effect give @s conduit_power 3 0 false

# Water particles around player when in water
execute if predicate evercraft:in_water run particle bubble ~ ~1 ~ 0.5 0.3 0.5 0.01 3 force @s
