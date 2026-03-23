# Artifact Transmutation — Tick (1s schedule)
# Handles: interaction detection, break detection, ambient particles

# Self-schedule first
schedule function evercraft:transmute/tick 1s replace

# Detect right-click on anvil interaction entities
execute as @e[type=interaction,tag=TX.Interact] at @s if data entity @s interaction run function evercraft:transmute/on_interact

# Break detection + ambient particles — OPT: 2 @e[tag=TX.Marker] scans → 1
execute as @e[type=marker,tag=TX.Marker] at @s run function evercraft:transmute/tick_marker
