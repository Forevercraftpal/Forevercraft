# Phantom 4-Piece Bonus: Phase Shift + Phantom Form ability
# Become temporarily invisible, activate with Phantom Horn item

# Check if this is the first time getting 4pc
execute unless entity @s[tag=phantom_4pc] run function evercraft:artifacts/sets/phantom/grant_ability_item
tag @s add phantom_4pc

# Apply slow falling (stacks with 2pc)
effect give @s slow_falling 3 0 false

# Phantom particles
particle witch ~ ~1 ~ 0.3 0.5 0.3 0.01 1 force @s
