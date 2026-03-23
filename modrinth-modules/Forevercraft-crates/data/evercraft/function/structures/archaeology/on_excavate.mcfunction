# Archaeology brush completion — tick-based detection
# Called from main tick (existence-gated on ec.sus_marker)
# Detects when a suspicious block converts to sand/gravel = brushing complete
# 10% chance to spawn a structure crate at the former block position

execute as @e[type=minecraft:marker,tag=ec.sus_marker] at @s run function evercraft:structures/archaeology/check_marker
