# Voidpiercer — Per-Tick Processing (Hunter Crossbow)
# Run as @s at @s when holding spirit weapon ID 2

# === RIFT PROCESSING (owner-filtered for multiplayer) ===
scoreboard players operation #owner_check ec.temp = @s ec.sp_uid
# Process each active rift marker owned by this player
execute if entity @s[tag=ec.sp_rift_active] as @e[tag=ec.sp_rift,tag=ec.sp_voidpiercer] if score @s ec.sp_owner = #owner_check ec.temp at @s run function evercraft:spirit/abilities/voidpiercer/rift_tick

# Check if rift expired (marker was killed) — only check owned voidpiercer rifts
execute if entity @s[tag=ec.sp_rift_active] unless entity @e[tag=ec.sp_rift,tag=ec.sp_voidpiercer,distance=..40] run tag @s remove ec.sp_rift_active

# === PHASE SHOT PROCESSING ===
execute if entity @s[tag=ec.sp_phase_active] run scoreboard players remove @s ec.sp_timer 1

# Fire homing bolt every 20 ticks during phase, if charges remain
execute if entity @s[tag=ec.sp_phase_active] if score @s ec.sp_charges matches 1.. store result score #vp_mod ec.temp run scoreboard players get @s ec.sp_timer
execute if entity @s[tag=ec.sp_phase_active] if score @s ec.sp_charges matches 1.. run scoreboard players operation #vp_mod ec.temp %= #20 ec.const
execute if entity @s[tag=ec.sp_phase_active] if score @s ec.sp_charges matches 1.. if score #vp_mod ec.temp matches 0 run function evercraft:spirit/abilities/voidpiercer/phase_bolt

# Phase expire
execute if entity @s[tag=ec.sp_phase_active,scores={ec.sp_timer=..0}] run function evercraft:spirit/abilities/voidpiercer/phase_end

# Phase VFX (every tick while active)
execute if entity @s[tag=ec.sp_phase_active] run particle reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.1 3

# === RAPID SNIPE TIMER ===
# Decrement rapid kill window; reset count when timer expires
execute if score @s ec.sp_rapid_timer matches 1.. run scoreboard players remove @s ec.sp_rapid_timer 1
execute if score @s ec.sp_rapid_timer matches 0 if score @s ec.sp_rapid_count matches 1.. run scoreboard players set @s ec.sp_rapid_count 0
