# Foraging Bush: Per-second spawn timer check
# Self-scheduling 1s loop
schedule function evercraft:forage/tick_spawn 1s

# Gate: skip if no players online
execute unless entity @a run return 0

# Process each online player (overworld only)
execute as @a at @s if predicate evercraft:in_overworld run function evercraft:forage/check_spawn
