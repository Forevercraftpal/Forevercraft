# Lifewoven Branch — Per-Tick Processing (Healer)
# Run as @s at @s when holding spirit weapon ID 10

# === AUTO-PULSE COOLDOWN ===
execute if score @s ec.sp_charges matches 1.. run scoreboard players remove @s ec.sp_charges 1

# === AUTO-PULSE: Check for low HP allies (every 20 ticks) ===
execute store result score #lw_mod ec.temp run time query gametime
scoreboard players operation #lw_mod ec.temp %= #20 ec.const
execute if score #lw_mod ec.temp matches 0 unless score @s ec.sp_charges matches 1.. run function evercraft:spirit/abilities/lifewoven_branch/auto_pulse

# === SANCTUARY ACTIVE ===
# Timer is globally decremented in spirit/tick, but also locally for sanctuary
# (sanctuary and surge share ec.sp_timer — only one active at a time)
execute if entity @s[tag=ec.sp_sanctuary_active] run scoreboard players remove @s ec.sp_timer 1

# Process sanctuary zone (owner-filtered for multiplayer)
scoreboard players operation #owner_check ec.temp = @s ec.sp_uid
execute if entity @s[tag=ec.sp_sanctuary_active] as @e[tag=ec.sp_sanctuary_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s run function evercraft:spirit/abilities/lifewoven_branch/sanctuary_tick

# Sanctuary expire
execute if entity @s[tag=ec.sp_sanctuary_active,scores={ec.sp_timer=..0}] run function evercraft:spirit/abilities/lifewoven_branch/sanctuary_expire

# === LIFE SURGE CHANNEL ===
execute if entity @s[tag=ec.sp_surge_charging] run scoreboard players remove @s ec.sp_state 1

# Channel VFX while charging
execute if entity @s[tag=ec.sp_surge_charging,scores={ec.sp_state=1..}] run function evercraft:spirit/abilities/lifewoven_branch/surge_channel

# Channel complete — release the heal wave
execute if entity @s[tag=ec.sp_surge_charging,scores={ec.sp_state=..0}] run function evercraft:spirit/abilities/lifewoven_branch/surge_release
