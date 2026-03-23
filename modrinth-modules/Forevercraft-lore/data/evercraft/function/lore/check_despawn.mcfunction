# Lore Discovery: Check if this sparkle should despawn (5-minute lifetime)
# Run as sparkle marker

# Calculate elapsed ticks since spawn
execute store result score #lore_now ec.temp run time query gametime
execute store result score #lore_spawn ec.temp run data get entity @s data.spawn_time
scoreboard players operation #lore_elapsed ec.temp = #lore_now ec.temp
scoreboard players operation #lore_elapsed ec.temp -= #lore_spawn ec.temp

# Despawn after 6000 ticks (5 minutes at 20 tps)
execute if score #lore_elapsed ec.temp matches 6000.. at @s run function evercraft:lore/despawn_sparkle
