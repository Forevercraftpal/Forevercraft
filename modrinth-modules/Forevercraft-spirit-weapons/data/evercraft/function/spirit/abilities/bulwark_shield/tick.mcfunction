# Bulwark Shield — Per-Tick Processing
# Run as @s at @s when holding spirit weapon ID 13

# === PASSIVE — Resistance I aura refresh (every 20 ticks) ===
execute store result score #bw_mod ec.temp run time query gametime
scoreboard players operation #bw_mod ec.temp %= #20 ec.const
execute if score #bw_mod ec.temp matches 0 run effect give @s resistance 2 0 true

# === UNBREAKABLE WALL — Channel processing ===
execute if entity @s[tag=ec.sp_wall_active] run function evercraft:spirit/abilities/bulwark_shield/wall_tick

# Wall timer decrement + expire
execute if entity @s[tag=ec.sp_wall_active] run scoreboard players remove @s ec.sp_timer 1
execute if entity @s[tag=ec.sp_wall_active,scores={ec.sp_timer=..0}] run function evercraft:spirit/abilities/bulwark_shield/wall_end

# === TITAN'S GUARD — Link processing ===
execute if entity @s[tag=ec.sp_guarding] run function evercraft:spirit/abilities/bulwark_shield/guard_tick

# Guard timer decrement + expire
execute if entity @s[tag=ec.sp_guarding] run scoreboard players remove @s ec.sp_timer 1
execute if entity @s[tag=ec.sp_guarding,scores={ec.sp_timer=..0}] run function evercraft:spirit/abilities/bulwark_shield/guard_end
