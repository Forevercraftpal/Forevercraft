# Furia Check — On Cooldown (skip check cycle)
# OPT: Matches patron pattern — single condition check + return
scoreboard players remove #global furia.cooldown 1
# OPT: Cap at 50 per tick (avoids unbounded entity scan in mob farms)
tag @e[type=#evercraft:mobs/furia/furia_targets,tag=!ec.furia.processed,limit=50] add ec.furia.processed
schedule function evercraft:mobs/furia/check 1s
