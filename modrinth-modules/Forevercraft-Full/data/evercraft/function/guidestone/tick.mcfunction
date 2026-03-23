# Guidestone System — Tick (1s schedule)
# Handles interaction detection, menu ticks, ambient particles, and break detection

# Self-schedule first so loop never dies
schedule function evercraft:guidestone/tick 1s replace

# Detect right-click on guidestone interaction entities
execute as @e[type=interaction,tag=ec.gs_interact] at @s if data entity @s interaction run function evercraft:guidestone/on_interact

# Tick open menus (check clicks, distance)
execute as @a[tag=ec.gs_in_menu] at @s run function evercraft:guidestone/menu/tick

# OPT: All marker checks (particles, primed, break) consolidated into 1 entity scan
# Particles proximity-gated (skip if no player within 48 blocks)
execute as @e[type=marker,tag=ec.gs_registered] at @s run function evercraft:guidestone/tick_marker
