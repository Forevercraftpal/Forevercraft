# ============================================================
# Exploration Journal — Tick (5s self-schedule)
# Checks for new discoveries across all categories
# ============================================================

# Handle journal view trigger
execute as @a[scores={jn.view=1..}] run function evercraft:journal/display/open

# OPT: Batched 4 @a scans into 1 per-player function call
execute as @a at @s run function evercraft:journal/player_tick

# Self-schedule every 5 seconds
schedule function evercraft:journal/tick 5s replace
