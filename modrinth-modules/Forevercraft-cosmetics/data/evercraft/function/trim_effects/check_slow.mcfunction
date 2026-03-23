# Trim Effects — Attribute-based materials (1s schedule)
# Netherite and Quartz stay per-tick (float mechanics + XP orb processing)
# OPT: Single @a scan dispatches all 10 trim checks per player (was 10 separate @a scans)

# Early exit if no players
execute unless entity @a run return run schedule function evercraft:trim_effects/check_slow 1s

# All trim checks consolidated into one per-player call
execute as @a at @s run function evercraft:trim_effects/check_all_player

# Reschedule
schedule function evercraft:trim_effects/check_slow 1s
