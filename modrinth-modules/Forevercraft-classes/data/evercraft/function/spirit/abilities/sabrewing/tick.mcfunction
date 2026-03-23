# Soulstring — Per-Tick Processing
# Run as @s at @s when holding spirit weapon ID 11

# Owner check for multiplayer marker filtering
scoreboard players operation #owner_check ec.temp = @s ec.sp_uid

# === RIFT VOLLEY — Process all active rift markers (owned by this player) ===
execute as @e[tag=ec.sp_rift] if score @s ec.sp_owner = #owner_check ec.temp at @s run function evercraft:spirit/abilities/sabrewing/rift_volley_tick

# === SINGULARITY — Process active singularity marker (owned by this player) ===
execute as @e[tag=ec.sp_singularity] if score @s ec.sp_owner = #owner_check ec.temp at @s run function evercraft:spirit/abilities/sabrewing/singularity_tick
