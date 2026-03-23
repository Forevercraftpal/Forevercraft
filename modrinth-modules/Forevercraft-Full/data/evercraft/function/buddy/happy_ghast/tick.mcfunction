# Happy Ghast Taming — Tick (5t self-schedule)
schedule function evercraft:buddy/happy_ghast/tick 5t replace

# Gate: skip if no tamed ghasts exist
execute unless entity @e[type=minecraft:happy_ghast,tag=ec.ghast_tamed,limit=1] run return 0

# Follow dispatch for each player who owns ghasts
execute as @a[scores={ghast.owner=1..}] at @s run function evercraft:buddy/happy_ghast/follow_dispatch

# Sync interaction entities for sitting ghasts
execute as @e[type=minecraft:happy_ghast,tag=ec.ghast_tamed,scores={ghast.sitting=1}] at @s run tp @e[type=interaction,tag=ec.ghast_interact,distance=..5,limit=1] @s
