# Artifact Set Detection + Per-Piece Passives — 2s Schedule
# OPT: Extended from 1s to 2s — effects have 5-15s durations so 2s refresh is safe
# Triggers and cooldowns stay in sets/tick (per-tick) for responsiveness

# Early exit if no players
execute unless entity @a run return run schedule function evercraft:artifacts/sets/check_tick 2s

# OPT: All set detection + per-piece passives batched into 1 per-player call (~32 @a scans → 1)
execute as @a at @s run function evercraft:artifacts/sets/check_tick_player

# Reschedule
schedule function evercraft:artifacts/sets/check_tick 2s
