# Happy Ghast Taming — On Feed (player fed slime ball to happy ghast)
# @s = player who fed, advancement trigger

# Revoke advancement for re-fire
advancement revoke @s only evercraft:happy_ghast/feed

# Find nearest happy ghast within 5 blocks
execute as @e[type=minecraft:happy_ghast,distance=..5,limit=1,sort=nearest] run function evercraft:buddy/happy_ghast/try_tame
