# Buddy Ability — Heart Particles (Tier 0+)
# Spawns heart particles near buddy when player is within 5 blocks
# Only triggers every ~5 seconds to avoid spam

# Use prox_timer modulo — trigger at 0 and 5 (reusing existing timer)
execute unless score @s ec.bd_prox_timer matches 0 unless score @s ec.bd_prox_timer matches 5 run return fail

# Buddy must be within 5 blocks
execute as @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..5,limit=1] at @s run particle minecraft:heart ~ ~0.8 ~ 0.2 0.2 0.2 0 2
