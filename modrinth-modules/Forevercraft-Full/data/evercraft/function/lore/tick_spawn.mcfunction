# Lore Discovery: Per-second spawn timer check
# Self-scheduling 1s loop
schedule function evercraft:lore/tick_spawn 1s

# Gate: skip if no players online
execute unless entity @a run return 0

# OPT: Skip spectators/creative — lore discovery is for survival gameplay
execute as @a[gamemode=!spectator,gamemode=!creative] at @s run function evercraft:lore/check_spawn
