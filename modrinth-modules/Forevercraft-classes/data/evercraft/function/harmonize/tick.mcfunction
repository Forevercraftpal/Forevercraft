# Ability Harmonization - Runs every 2 seconds
# Counts effect sources per player at each level, then compounds them
# Formula: 2x Level N = 1x Level N+1 (only same levels combine)
# OPT: Moved from 1s to 2s — effects have 5-15s durations, 2s refresh is safe

# Gate: skip if no players online
execute unless entity @a run return run schedule function evercraft:harmonize/tick 2s

# OPT: Batched into per-player function (3 @a scans → 1)
execute as @a at @s run function evercraft:harmonize/player_tick

schedule function evercraft:harmonize/tick 2s
