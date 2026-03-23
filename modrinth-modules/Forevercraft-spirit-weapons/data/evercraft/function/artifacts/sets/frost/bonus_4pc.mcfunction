# Frost 4-Piece Bonus: Ice Aura + Blizzard ability
# Passive slow aura, activate blizzard with Frost Horn item

# Check if this is the first time getting 4pc
execute unless entity @s[tag=frost_4pc] run function evercraft:artifacts/sets/frost/grant_ability_item
tag @s add frost_4pc

# Ice aura - slow nearby hostile mobs
effect give @e[type=#evercraft:hostile,distance=..4] slowness 2 1 false

# Frost particles around player
particle snowflake ~ ~1 ~ 1 0.5 1 0.02 3 force @s
