# Dragonslayer 4-Piece Bonus: Fire Immunity + Flight Burst (item activated)
# Fire resistance is passive, flight burst is activated by Dragon Horn item

# Check if this is the first time getting 4pc
execute unless entity @s[tag=dragonslayer_4pc] run function evercraft:artifacts/sets/dragonslayer/grant_ability_item
tag @s add dragonslayer_4pc

# Apply fire resistance
effect give @s fire_resistance 3 0 false
