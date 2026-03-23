# Nite — Dimensional Rift Per-Tick Processing
# Processes all active rift markers: damage entities, particles, expiry

# Decrement lifetime on all rift markers
execute as @e[tag=ec.sp_rift_marker] run scoreboard players remove @s ec.sp_timer 1

# Kill expired markers
execute as @e[tag=ec.sp_rift_marker,scores={ec.sp_timer=..0}] at @s run particle reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.02 5
kill @e[tag=ec.sp_rift_marker,scores={ec.sp_timer=..0}]

# Damage entities near each marker (1.5 block radius)
execute as @e[tag=ec.sp_rift_marker] at @s run function evercraft:spirit/abilities/nite/rift_damage

# Particles on each marker
execute as @e[tag=ec.sp_rift_marker] at @s run particle reverse_portal ~ ~0.5 ~ 0.3 0.8 0.3 0.02 3
execute as @e[tag=ec.sp_rift_marker] at @s run particle dust{color:[0.3,0.0,0.5],scale:1.0} ~ ~0.5 ~ 0.3 0.8 0.3 0.01 2
