# Player right-clicked a laborer's interaction entity
# Runs as: interaction entity (tag: ec.lb_interact)

# Clear the interaction data
data remove entity @s interaction

# Tag the laborer associated with this interaction (within 2 blocks — NoAI so they overlap)
execute at @s run tag @e[type=villager,tag=ec.laborer,distance=..2,limit=1,sort=nearest] add ec.lb_target

# Get the clicker (nearest player to the interaction) and run click handler
execute as @p[distance=..5] at @s run function evercraft:laborer/handle_click
