# Depthsworn — Aegis Wall Zone Tick
# Run as player at player. Marker entity = ec.sp_aegis_marker.

# Set owner check for multiplayer marker filtering
scoreboard players operation #owner_check ec.temp = @s ec.sp_uid

# Determine radius: normal 6 blocks, spirit tier 8 blocks
# Apply effects at marker position
execute as @e[tag=ec.sp_aegis_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s run effect give @a[tag=ec.player,distance=..6] resistance 2 1 true

# Enemies entering: Slowness III + 2 damage/second (every 20 ticks)
execute as @e[tag=ec.sp_aegis_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s run effect give @e[type=!player,tag=!ec.sp_aegis_marker,distance=..6] slowness 2 2 true

# Damage enemies in zone every 20 ticks
scoreboard players operation #sp_aegis_dmg_tick ec.temp = @s ec.sp_aegis_active
scoreboard players operation #sp_aegis_dmg_tick ec.temp %= #20 ec.const
execute if score #sp_aegis_dmg_tick ec.temp matches 0 as @e[tag=ec.sp_aegis_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s as @e[type=!player,tag=!ec.sp_aegis_marker,distance=..6] run damage @s 2 minecraft:generic

# Spirit tier: 4 damage/second instead
execute if score @s ec.sp_tier matches 7 if score #sp_aegis_dmg_tick ec.temp matches 0 as @e[tag=ec.sp_aegis_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s as @e[type=!player,tag=!ec.sp_aegis_marker,distance=..6] run damage @s 2 minecraft:generic

# Twin bonus: heal allies 1 HP/s (every 20 ticks)
execute if score @s ec.sp_twin matches 1 if score #sp_aegis_dmg_tick ec.temp matches 0 as @e[tag=ec.sp_aegis_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s run effect give @a[tag=ec.player,distance=..6] instant_health 1 0

# Visual outline
execute as @e[tag=ec.sp_aegis_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s run particle dust{color:[0.6,0.6,0.7],scale:0.8} ~6 ~0.5 ~ 0 0.3 0 0.02 3
execute as @e[tag=ec.sp_aegis_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s run particle dust{color:[0.6,0.6,0.7],scale:0.8} ~-6 ~0.5 ~ 0 0.3 0 0.02 3
execute as @e[tag=ec.sp_aegis_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s run particle dust{color:[0.6,0.6,0.7],scale:0.8} ~ ~0.5 ~6 0 0.3 0 0.02 3
execute as @e[tag=ec.sp_aegis_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s run particle dust{color:[0.6,0.6,0.7],scale:0.8} ~ ~0.5 ~-6 0 0.3 0 0.02 3
