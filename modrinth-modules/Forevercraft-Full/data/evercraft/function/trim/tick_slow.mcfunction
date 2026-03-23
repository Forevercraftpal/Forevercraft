# Trim Abilities — Passive Aura Effects (1s schedule)
# OPT: Moved from per-tick. All effects have 3s+ durations, 1s refresh is safe.

# Reschedule first (guarantees we keep ticking regardless of gate)
schedule function evercraft:trim/tick_slow 1s

# Early exit if no players
execute unless entity @a run return 0

# RIB - Wither on nearby mobs (single piece)
execute as @a[tag=single_rib] at @s run effect give @e[type=#minecraft:hostile,distance=1..5] wither 3 1 false

# WILD - Single piece: Speed + tamed pet strength
# OPT: 3 @a[tag=single_wild] scans → 1 per-player function
execute as @a[tag=single_wild] at @s run function evercraft:trim/single_wild_tick

# WILD - Full set: Haste 2
execute as @a[tag=full_set_wild] run effect give @s haste 3 1 false

# WARD - Full set: Resistance 1
execute as @a[tag=full_set_ward] run effect give @s resistance 3 0 false

# DUNE - Full set: Speed 5 and step height 3 in desert/badlands
execute as @a[tag=full_set_dune] at @s run function evercraft:trim/full_set/dune/biome_check

# SNOUT - Full set: Fire resistance + Enhanced piglin bartering
execute as @a[tag=full_set_snout] run effect give @s fire_resistance 3 0 false
execute if entity @a[tag=full_set_snout] run function evercraft:trim/full_set/snout/barter_check

# EYE - Full set: Hostile mob detection (glowing effect on nearby hostiles)
execute as @a[tag=full_set_eye] at @s run effect give @e[type=#minecraft:hostile,distance=..16] glowing 3 0 false
