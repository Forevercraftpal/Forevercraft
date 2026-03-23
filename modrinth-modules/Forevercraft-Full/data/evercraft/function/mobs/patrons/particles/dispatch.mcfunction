# Patron Particle Dispatch — runs as patron entity, at entity (anchored eyes)
# OPT: Consolidates 6 @e scans into 1 per-patron function call

# Only render if a player is within render distance
execute unless entity @a[distance=..48] run return 0

execute if entity @s[tag=ec.patron.common] run function evercraft:mobs/patrons/particles/common
execute if entity @s[tag=ec.patron.uncommon] run function evercraft:mobs/patrons/particles/uncommon
execute if entity @s[tag=ec.patron.rare] run function evercraft:mobs/patrons/particles/rare
execute if entity @s[tag=ec.patron.ornate] run function evercraft:mobs/patrons/particles/ornate
execute if entity @s[tag=ec.patron.exquisite] run function evercraft:mobs/patrons/particles/exquisite
execute if entity @s[tag=ec.patron.mythical] run function evercraft:mobs/patrons/particles/mythical
