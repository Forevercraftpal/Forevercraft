# Storm 4-Piece Bonus: Storm Aura + Thunder Strike ability
# Command the fury of the heavens

# Check if this is the first time getting 4pc
execute unless entity @s[tag=storm_4pc] run function evercraft:artifacts/sets/storm/grant_ability_item
tag @s add storm_4pc

# Storm aura - nearby enemies get slowed and take periodic shock damage
effect give @e[type=#evercraft:hostile,distance=..5] slowness 2 0 false

# Electric particles
particle electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.02 2 force @s
