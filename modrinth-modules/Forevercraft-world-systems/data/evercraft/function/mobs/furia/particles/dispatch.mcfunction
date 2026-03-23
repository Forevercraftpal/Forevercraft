# Furia Particle Dispatch — runs as furia entity, at entity
# OPT: Consolidates 3 @e scans into 1 + proximity gate

# Only render if a player is within render distance
execute unless entity @a[distance=..48] run return 0

execute if entity @s[tag=ec.furia.minor] run function evercraft:mobs/furia/particles/minor
execute if entity @s[tag=ec.furia.standard] run function evercraft:mobs/furia/particles/standard
execute if entity @s[tag=ec.furia.greater] run function evercraft:mobs/furia/particles/greater
