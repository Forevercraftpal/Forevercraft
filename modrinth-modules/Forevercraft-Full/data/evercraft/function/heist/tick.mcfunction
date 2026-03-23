# Black Market Heist — Detection Tick (self-scheduling, 1s)
# Detects sneaking players with dungeon key near BM barrels

schedule function evercraft:heist/tick 1s replace
execute unless entity @a run return 0

# Gate: skip if a heist is already in progress
execute if score #heist_active ec.var matches 1 run return 0

# Enable trigger for all players (cheap — scoreboard op)
scoreboard players enable @a ec.heist

# Find players who are sneaking + holding dungeon key + near a BM.Barrel
execute as @a[predicate=evercraft:heist/sneaking_with_key] at @s if entity @e[type=marker,tag=BM.Barrel,distance=..5] run function evercraft:heist/detect
