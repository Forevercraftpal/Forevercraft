# Storm 2-Piece Bonus: Lightning immunity + Charged attacks
# Become one with the storm

# Tag player as having 2pc bonus
execute unless entity @s[tag=storm_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Storm 2pc: ",color:"yellow"},{text:"Lightning immunity + Charged attacks",color:"gray"}]
tag @s add storm_2pc

# Lightning immunity through fire resistance (lightning damage is fire-based)
# Plus speed boost representing electrical charge
# Only apply if harmonize isn't handling it (single source)
execute unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false
