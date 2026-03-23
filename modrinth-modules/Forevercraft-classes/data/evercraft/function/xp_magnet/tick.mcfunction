# XP Magnet: Float experience orbs toward nearest player at moderate speed
# OPT: Self-scheduling at 2t instead of per-tick (50% fewer entity scans)

schedule function evercraft:xp_magnet/tick 2t

# Early exit if no players
execute unless entity @a run return 0

# Initialize new XP orbs near players — disable gravity so they float smoothly
# OPT: Flat scan — each orb processed once regardless of player count (was nested as @a → as @e)
# OPT: limit=50 prevents lag spikes near XP farms
execute as @e[type=experience_orb,tag=!ec.xp,limit=50] at @s if entity @a[distance=..16] run function evercraft:xp_magnet/init_orb

# Float toward nearest player within 8 blocks (~6 blocks/sec at 2t interval)
# OPT: Flat scan — avoids duplicate teleports in multiplayer (was nested as @a → as @e)
# OPT: limit=100 caps processing per tick (unprocessed orbs catch up on next tick)
execute as @e[type=experience_orb,tag=ec.xp,limit=100] at @s if entity @a[distance=..8] facing entity @p feet run tp @s ^ ^ ^0.6
