# Trim Effects - Material-based trim abilities tick
# OPTIMIZED: Most materials on 1s schedule (OPT-4)
# Netherite (float/landing) and Quartz (XP orb processing) stay per-tick

# Early exit if no players online
execute unless entity @a run return 0

# ============================================
# NETHERITE TRIM — Gravity control (per-tick: landing detection)
# OPT: Tag-gated — ec.te_nth_any is set in check_all for any netherite user.
# First-equip is caught by the slow 1s check_all_player which also calls netherite check_all.
# ============================================
execute if entity @a[tag=ec.te_nth_any,limit=1] as @a[tag=ec.te_nth_any] at @s run function evercraft:trim_effects/netherite_trim/check_all

# ============================================
# QUARTZ TRIM — XP bonus (per-tick: orbs despawn fast)
# OPT: Double-gated — skip entirely when no quartz wearers OR no untagged orbs exist
# ============================================
execute if entity @a[tag=te.quartz_wearing,limit=1] if entity @e[type=experience_orb,tag=!quartz_xp_orb,limit=1] as @a[tag=te.quartz_wearing] at @s as @e[type=experience_orb,tag=!quartz_xp_orb,distance=..24] run function evercraft:trim_effects/quartz_trim/quartz_xp

# All other materials on 1s schedule in check_slow
