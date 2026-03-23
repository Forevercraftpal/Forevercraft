# Mount Charge — Knockback (push mob away)
# @s = player (source of charge)
# Nearest hostile gets upward + outward push

execute as @e[type=#evercraft:hostile,tag=ec.bd_charge_hit,distance=..5,limit=1,sort=nearest] run data modify entity @s Motion set value [0.0d, 0.8d, 0.0d]
