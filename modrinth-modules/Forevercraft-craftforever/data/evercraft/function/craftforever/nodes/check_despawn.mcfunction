# Biome Node: Check if this node should despawn (5-minute lifetime)
# Run as node marker

# Calculate elapsed ticks since spawn
execute store result score #cf_now ec.temp run time query gametime
execute store result score #cf_spawn ec.temp run data get entity @s data.spawn_time
scoreboard players operation #cf_elapsed ec.temp = #cf_now ec.temp
scoreboard players operation #cf_elapsed ec.temp -= #cf_spawn ec.temp

# Despawn after 6000 ticks (5 minutes at 20 tps)
execute if score #cf_elapsed ec.temp matches 6000.. at @s run function evercraft:craftforever/nodes/despawn_node
