# Foraging Bush: Check if this bush should despawn (5-minute lifetime)
# Run as bush marker

# Calculate elapsed ticks since spawn
execute store result score #fg_now ec.temp run time query gametime
execute store result score #fg_spawn ec.temp run data get entity @s data.spawn_time
scoreboard players operation #fg_elapsed ec.temp = #fg_now ec.temp
scoreboard players operation #fg_elapsed ec.temp -= #fg_spawn ec.temp

# Despawn after 6000 ticks (5 minutes at 20 tps)
execute if score #fg_elapsed ec.temp matches 6000.. at @s run function evercraft:forage/despawn_bush
