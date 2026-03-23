# Tamable Ocelot System — Main Tick (5t self-scheduling)

schedule function evercraft:ocelots/tick 5t

# Gate: skip if no tamed ocelots exist
execute unless entity @e[type=ocelot,tag=ec.ocelot_tamed,limit=1] run return 0

# Follow dispatch for each player who owns ocelots
execute as @a[scores={ocelot.owner=1..}] at @s run function evercraft:ocelots/follow_dispatch

# Sync interaction entities for sitting ocelots (follow_tick handles non-sitting ones)
execute as @e[type=ocelot,tag=ec.ocelot_tamed,scores={ocelot.sitting=1}] at @s run tp @e[type=interaction,tag=ec.ocelot_interact,distance=..3,limit=1] @s
