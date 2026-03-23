# Treasure - Tick
# Early exit if no players online
execute unless entity @a run return 0

# OPT: Tag-gated flat scan — check unchecked items only (no @a×@e cross-product)
# Tag persists so each item is only NBT-checked once (like mob_crates pattern)
# OPT: limit=10 caps per-tick processing — prevents lag spikes with many dropped items
execute as @e[type=item,tag=!ec.head_checked,limit=10] at @s if entity @a[distance=..20] run function evercraft:treasure/check_head

# execute as every player
execute as @a at @s run function evercraft:treasure/tick_player

# execute as every entity (only if tagged entities exist)
execute if entity @e[type=#evercraft:treasure/targets,tag=ec.entity,limit=1] as @e[type=#evercraft:treasure/targets,tag=ec.entity] at @s run function evercraft:treasure/tick_entity

# Ghost cleanup moved to cleanup/tick (5s schedule) — orphaned displays are rare, don't need per-tick