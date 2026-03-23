# Wither 4-Piece Bonus: Wither Aura + Soul Harvest ability
# Nearby mobs get withered, soul harvest activated with Soul Horn item

# Check if this is the first time getting 4pc
execute unless entity @s[tag=wither_4pc] run function evercraft:artifacts/sets/wither/grant_ability_item
tag @s add wither_4pc

# Wither aura - apply wither to nearby hostile mobs
effect give @e[type=#evercraft:hostile,distance=..4] wither 3 0 false

# Dark particles around player
particle soul ~ ~1 ~ 0.5 0.3 0.5 0.01 2 force @s
