# Tamable Fox System — Main Tick (5t self-scheduling)

schedule function evercraft:foxes/tick 5t

# Gate: skip if no tamed foxes exist
execute unless entity @e[type=fox,tag=ec.fox_tamed,limit=1] run return 0

# Follow dispatch for each player who owns foxes
execute as @a[scores={fox.owner=1..}] at @s run function evercraft:foxes/follow_dispatch

# Sync interaction entities for sitting foxes (follow_tick handles non-sitting ones)
execute as @e[type=fox,tag=ec.fox_tamed,scores={fox.sitting=1}] at @s run tp @e[type=interaction,tag=ec.fox_interact,distance=..3,limit=1] @s
