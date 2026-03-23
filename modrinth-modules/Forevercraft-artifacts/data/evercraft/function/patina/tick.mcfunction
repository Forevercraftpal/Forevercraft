# Artifact Patina — 60-second tick
# Adds 60 seconds to patina_ticks for each equipped artifact

# OPT: Schedule first so loop never dies, then early exit if no players
schedule function evercraft:patina/tick 60s
execute unless entity @a run return 0

execute as @a at @s run function evercraft:patina/process_player
