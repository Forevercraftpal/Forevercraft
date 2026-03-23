# Tamable Ocelot — On Feed (advancement reward)
# Runs as the player who fed raw cod/salmon to an ocelot
# Wild ocelot = taming progress, tamed ocelot = vanilla breeding (no action needed)

# Revoke immediately so it can re-trigger
advancement revoke @s only evercraft:ocelots/feed_fish

# Tamed ocelot — let vanilla handle breeding, do nothing
execute if entity @e[type=ocelot,tag=ec.ocelot_tamed,distance=..5,limit=1] run return 0

# Wild ocelot — taming progress
execute as @e[type=ocelot,tag=!ec.ocelot_tamed,distance=..5,limit=1,sort=nearest] run function evercraft:ocelots/try_tame
