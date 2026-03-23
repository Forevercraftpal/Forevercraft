# Shared Movement Detection — 1s self-schedule
# Reads Pos[0]/Pos[2] ONCE per player, sets ec.moving (5=moving, decays to 0)
# Used by: lore, forage, prospect (and housing zone via separate Pos reads)
# OPT: Replaces 3 duplicate Pos reads per system (6→2 NBT reads/player/sec)

schedule function evercraft:movement/tick 1s

execute unless entity @a run return 0

execute as @a at @s run function evercraft:movement/detect
