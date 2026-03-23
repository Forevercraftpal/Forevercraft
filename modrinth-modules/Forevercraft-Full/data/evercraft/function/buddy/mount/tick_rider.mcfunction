# Buddy Mount — Per-Rider Tick (called from mount_training/check_riding)
# @s = player who is riding a mount
# Handles charge attack detection and breath mechanic

# === SPEED TRACKING (for charge detection) ===
# Store current position
execute store result score #bd_cur_x ec.temp run data get entity @s Pos[0] 1
execute store result score #bd_cur_z ec.temp run data get entity @s Pos[2] 1

# Calculate distance moved (Manhattan approximation for speed)
scoreboard players operation #bd_dx ec.temp = #bd_cur_x ec.temp
scoreboard players operation #bd_dx ec.temp -= @s ec.bd_prev_x
scoreboard players operation #bd_dz ec.temp = #bd_cur_z ec.temp
scoreboard players operation #bd_dz ec.temp -= @s ec.bd_prev_z

# Absolute value
execute if score #bd_dx ec.temp matches ..-1 run scoreboard players operation #bd_dx ec.temp *= #-1 ec.temp
execute if score #bd_dz ec.temp matches ..-1 run scoreboard players operation #bd_dz ec.temp *= #-1 ec.temp

# Speed = dx + dz (blocks/second approximation)
scoreboard players operation @s ec.bd_charge_spd = #bd_dx ec.temp
scoreboard players operation @s ec.bd_charge_spd += #bd_dz ec.temp

# Update previous position
scoreboard players operation @s ec.bd_prev_x = #bd_cur_x ec.temp
scoreboard players operation @s ec.bd_prev_z = #bd_cur_z ec.temp

# === CHARGE DETECTION ===
# Speed > 12 blocks/sec = charging
execute if score @s ec.bd_charge_spd matches 12.. run function evercraft:buddy/mount/charge/detect

# Decrement charge cooldown
execute if score @s ec.bd_charge_cd matches 1.. run scoreboard players remove @s ec.bd_charge_cd 1

# === BREATH MECHANIC (buddy mounts only) ===
execute as @e[type=#evercraft:tameable_companions,tag=ec.bd_buddy,predicate=evercraft:companions/check_id,limit=1] run function evercraft:buddy/mount/speed/breath_check

# Increment continuous ride time
scoreboard players add @s ec.bd_ride_cont 1
