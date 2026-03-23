# Glyphforge — Tick (1s schedule)
# Detect interactions, break detection, ambient particles, forge completion

schedule function evercraft:glyphforge/tick 1s

# Detect right-click on any glyphforge interaction entity
execute as @e[type=interaction,tag=RF.Interact] at @s if data entity @s interaction run function evercraft:glyphforge/on_interact

# Tick open menus (check clicks, distance)
execute as @a[tag=RF.InMenu] at @s run function evercraft:glyphforge/gui/tick

# OPT: All marker checks (break, forge, particles) consolidated into 1 entity scan (was 6)
# Particles proximity-gated (skip if no player within 48 blocks)
execute as @e[type=marker,tag=RF.Marker] at @s run function evercraft:glyphforge/tick_marker
