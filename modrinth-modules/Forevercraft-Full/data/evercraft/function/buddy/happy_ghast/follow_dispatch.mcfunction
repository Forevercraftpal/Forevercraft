# Happy Ghast — Follow Dispatch
# Runs as each player at their position. Finds all owned non-sitting ghasts.

# Set search key
scoreboard players operation #ghast_search ghast.owner = @s ghast.owner

# Tag self so follow_tick knows who the owner is
tag @s add ec.ghast_owner

# Run follow logic on all owned ghasts that aren't sitting
execute as @e[type=minecraft:happy_ghast,tag=ec.ghast_tamed,scores={ghast.sitting=0}] if score @s ghast.owner = #ghast_search ghast.owner at @s run function evercraft:buddy/happy_ghast/follow_tick

# Clean up
tag @s remove ec.ghast_owner
