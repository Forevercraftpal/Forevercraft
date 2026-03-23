# Tamable Ocelot — Follow Dispatch
# Runs as each player at their position. Finds all owned non-sitting ocelots and runs follow.

# Set search key for predicate
scoreboard players operation #ocelot_search ocelot.owner = @s ocelot.owner

# Tag self so follow_tick knows who the owner is
tag @s add ec.ocelot_owner

# Run follow logic on all owned ocelots that aren't sitting
execute as @e[type=ocelot,tag=ec.ocelot_tamed,predicate=evercraft:ocelots/check_ocelot_owner,scores={ocelot.sitting=0}] at @s run function evercraft:ocelots/follow_tick

# Clean up
tag @s remove ec.ocelot_owner
