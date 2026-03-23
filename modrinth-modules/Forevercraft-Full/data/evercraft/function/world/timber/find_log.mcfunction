# Timber (5% Any Axe) — Find nearest log to start felling
# Scans a small area around the player for connected logs
# Uses raycast from player eyes to find the nearest log

scoreboard players set #timber_ray ec.var 0
execute anchored eyes positioned ^ ^ ^0.5 run function evercraft:world/timber/raycast_find
