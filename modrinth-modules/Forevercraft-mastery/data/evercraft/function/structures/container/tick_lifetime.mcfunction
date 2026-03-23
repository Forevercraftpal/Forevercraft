# Tick lifetime of temporary loot containers
# Run as marker entities with tag cf.temp_container

# OPT: Scoreboard-based lifetime (was NBT read+write every tick — 2 data commands per marker)
scoreboard players remove @s cf.container_life 1

# Check if container is empty (remove immediately if so)
execute if block ~ ~ ~ minecraft:barrel run function evercraft:structures/container/check_empty

# If lifetime expired, remove container and marker
execute if score @s cf.container_life matches ..0 run function evercraft:structures/container/remove
