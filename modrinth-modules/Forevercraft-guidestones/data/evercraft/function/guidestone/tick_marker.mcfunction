# Guidestone Marker Tick — runs as marker, at marker
# OPT: Consolidates 4 @e scans into 1 per-marker function call

# Break detection: if lodestone block is gone, clean up (always check, regardless of proximity)
execute unless block ~ ~ ~ minecraft:lodestone run return run function evercraft:guidestone/on_break

# OPT: Single proximity check gates all particle commands (was 3 separate @a[distance=..48] checks)
execute unless entity @a[distance=..48] run return 0

# Ambient particles
particle minecraft:reverse_portal ~0.5 ~1.2 ~0.5 0.3 0.2 0.3 0.01 3

# Primed guidestones get additional portal particles
execute if data entity @s {data:{primed:1b}} run particle minecraft:portal ~0.5 ~1.3 ~0.5 0.2 0.3 0.2 0.3 5
execute if data entity @s {data:{primed:1b}} run particle minecraft:enchant ~0.5 ~1.5 ~0.5 0.3 0.3 0.3 0.2 3
