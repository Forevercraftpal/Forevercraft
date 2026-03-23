# Infinity Lance — Pierce damage per entity in line
# Runs as each entity hit by the pierce (may fire multiple times on same entity)
# Guard against double-damage with a tag (cleaned up by parent function)

execute if entity @s[tag=bl.pierced] run return 0
tag @s add bl.pierced

damage @s 3 minecraft:mob_attack
execute at @s run particle sonic_boom ~ ~0.5 ~ 0 0 0 0 1
