# ============================================================
# Inscription Stones — Effects Tick (every 5 seconds)
# Apply area effects, render particles, detect broken stones
# ============================================================

# OPT: All per-stone checks consolidated into 1 entity scan (was 10)
execute as @e[type=marker,tag=ec.inscr_stone] at @s run function evercraft:inscription/tick_marker

schedule function evercraft:inscription/effects_tick 100t
