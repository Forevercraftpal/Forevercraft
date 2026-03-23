# RPG Health Bar — Tick (every 2 ticks)
# Raycasts from each enabled player's eyes to find mobs

# For each enabled player, do raycast
execute as @a[scores={hb.enabled=1..}] at @s anchored eyes positioned ^ ^ ^0.5 run function evercraft:health_bar/raycast/init

# Linger countdown — decrement and hide when expired
execute as @a[scores={hb.linger=1..}] run scoreboard players remove @s hb.linger 1
execute as @a[scores={hb.linger=0,hb.enabled=1..}] run function evercraft:health_bar/hide

# Reschedule
schedule function evercraft:health_bar/tick 2t
