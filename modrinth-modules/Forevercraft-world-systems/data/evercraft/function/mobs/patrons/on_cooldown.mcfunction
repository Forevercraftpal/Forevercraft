# Patron Check — On Cooldown (skip check cycle)
# Decrements cooldown, tags unprocessed mobs, reschedules
scoreboard players remove #global patron.cooldown 1
# OPT: Cap at 50 per tick to match check.mcfunction (avoids unbounded entity scan in mob farms)
tag @e[type=#evercraft:mobs/patrons/patron_targets,tag=!ec.patron.processed,limit=50] add ec.patron.processed
schedule function evercraft:mobs/patrons/check 1s
