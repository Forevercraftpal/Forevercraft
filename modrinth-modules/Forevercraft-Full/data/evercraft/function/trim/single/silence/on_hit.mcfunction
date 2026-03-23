# Silence Single — On Damage Taken
# OPT: 2 @a scans → 1 per-player function
# Slowness 4 and glowing to attacker
effect give @e[type=#minecraft:hostile,distance=..8,limit=1,sort=nearest] slowness 5 3 false
effect give @e[type=#minecraft:hostile,distance=..8,limit=1,sort=nearest] glowing 5 0 false
