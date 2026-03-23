# Chest Filler - Tick
# Manages temporary loot container lifetimes

# Early exit if no players online
execute unless entity @a run return 0

# Early exit if no temp containers exist
execute unless entity @e[type=marker,tag=cf.temp_container,limit=1] run return 0

# Tick all temporary container markers (they handle removal when empty or expired)
execute as @e[type=marker,tag=cf.temp_container] at @s run function evercraft:structures/container/tick_lifetime
