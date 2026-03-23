# Ore Node: Per-second spawn timer check
# Self-scheduling 1s loop
schedule function evercraft:prospect/tick_spawn 1s

# Gate: skip if no players online
execute unless entity @a run return 0

# OPT: Skip spectators/creative — ore nodes are for survival gameplay
execute as @a[gamemode=!spectator,gamemode=!creative] at @s run function evercraft:prospect/check_spawn
