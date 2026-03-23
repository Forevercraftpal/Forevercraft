# Mob Crates - Tick Function (self-scheduling, runs every 10 ticks)
# Detects mob crate marker items dropped by rarity mobs and spawns crates

# OPT: Tag-based scan — only check unchecked items (avoids deep NBT scan on ALL items)
execute as @e[type=item,tag=!ec.crate_checked] run function evercraft:mob_crates/check_item

# Self-schedule (0.5s is fast enough — items have pickup_delay anyway)
schedule function evercraft:mob_crates/tick 10t replace
