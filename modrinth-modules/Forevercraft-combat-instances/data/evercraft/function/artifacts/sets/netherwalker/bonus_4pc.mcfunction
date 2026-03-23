# Netherwalker 4-Piece Bonus: Lava Walking + Blaze Burst ability
# Walk on lava like magma walker, activate burst with Nether Horn item

# Check if this is the first time getting 4pc
execute unless entity @s[tag=netherwalker_4pc] run function evercraft:artifacts/sets/netherwalker/grant_ability_item
tag @s add netherwalker_4pc

# Apply fire resistance (stacks with 2pc)
effect give @s fire_resistance 3 0 false

# Lava walking - turn lava under feet to obsidian temporarily (only in nether)
execute if dimension minecraft:the_nether if block ~ ~-1 ~ minecraft:lava run setblock ~ ~-1 ~ minecraft:obsidian
