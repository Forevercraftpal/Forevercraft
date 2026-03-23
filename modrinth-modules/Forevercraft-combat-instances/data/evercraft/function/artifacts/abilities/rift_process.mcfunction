# Rift Process — run as/at each rift marker

# Damage mobs that enter the rift (skip first tick — already hit on creation)
execute unless entity @s[tag=ec.rift_new] as @e[type=!player,type=!item,type=!marker,distance=..3] run damage @s 5 minecraft:magic
execute unless entity @s[tag=ec.rift_new] as @e[type=!player,type=!item,type=!marker,distance=..3] run effect give @s levitation 2 2 false
tag @s remove ec.rift_new

# Portal particle effects
particle portal ~ ~1 ~ 0.8 0.5 0.8 0.3 15
particle reverse_portal ~ ~0.3 ~ 0.5 0.1 0.5 0.2 10

# Gametime-based expiry (handles unloaded chunks correctly)
execute store result score #now ec.temp run time query gametime
execute store result score #spawn ec.temp run data get entity @s data.spawn_time
scoreboard players operation #now ec.temp -= #spawn ec.temp
# Kill if older than 100 game ticks (5 seconds real time)
execute if score #now ec.temp matches 100.. run kill @s
