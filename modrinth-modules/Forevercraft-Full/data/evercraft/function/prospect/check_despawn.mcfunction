# Ore Node: Check if this node should despawn (5-minute lifetime)
# Run as node marker

# Calculate elapsed ticks since spawn
execute store result score #pr_now ec.temp run time query gametime
execute store result score #pr_spawn ec.temp run data get entity @s data.spawn_time
scoreboard players operation #pr_elapsed ec.temp = #pr_now ec.temp
scoreboard players operation #pr_elapsed ec.temp -= #pr_spawn ec.temp

# Despawn after 6000 ticks (5 minutes at 20 tps)
execute if score #pr_elapsed ec.temp matches 6000.. at @s run function evercraft:prospect/despawn_node
