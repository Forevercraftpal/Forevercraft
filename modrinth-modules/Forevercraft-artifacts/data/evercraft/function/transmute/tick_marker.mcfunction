# Transmute Marker Tick — Per-Entity
# OPT: 2 @e[tag=TX.Marker] scans → 1

# Break detection: if lodestone is gone, clean up marker + interact
execute unless block ~ ~ ~ minecraft:lodestone run return run function evercraft:transmute/on_break

# Ambient particles (proximity-gated — skip if no player nearby)
execute if entity @a[distance=..48] run particle minecraft:reverse_portal ~ ~1.2 ~ 0.2 0.15 0.2 0.01 2
