# Tamable Fox — Follow Dispatch
# Runs as each player at their position. Finds all owned non-sitting foxes and runs follow.

# Set search key for predicate
scoreboard players operation #fox_search fox.owner = @s fox.owner

# Tag self so follow_tick knows who the owner is
tag @s add ec.fox_owner

# Run follow logic on all owned foxes that aren't sitting
execute as @e[type=fox,tag=ec.fox_tamed,predicate=evercraft:foxes/check_fox_owner,scores={fox.sitting=0}] at @s run function evercraft:foxes/follow_tick

# Clean up
tag @s remove ec.fox_owner
