# Tamable Fox — On Feed (advancement reward)
# Runs as the player who fed sweet berries to a fox
# Wild fox = taming progress, tamed fox = vanilla breeding (no action needed)

# Revoke immediately so it can re-trigger
advancement revoke @s only evercraft:foxes/feed_berry

# Tamed fox — let vanilla handle breeding, do nothing
execute if entity @e[type=fox,tag=ec.fox_tamed,distance=..5,limit=1] run return 0

# Wild fox — taming progress
execute as @e[type=fox,tag=!ec.fox_tamed,distance=..5,limit=1,sort=nearest] run function evercraft:foxes/try_tame
