# Ashcrown Mace — Per-Tick Processing (Sentinel)
# Run as @s at @s when holding spirit weapon ID 7

# === SHIELD CHARGE DECAY ===
# Slow decay: remove 1 charge every 100 ticks
execute if score @s ec.sp_shield_charge matches 1.. store result score #am_mod ec.temp run scoreboard players get @s ec.sp_shield_charge
execute if score @s ec.sp_shield_charge matches 1.. run scoreboard players operation #am_mod ec.temp %= #20 ec.const
execute if score @s ec.sp_shield_charge matches 1.. if score #am_mod ec.temp matches 0 run scoreboard players remove @s ec.sp_shield_charge 1

# === ALLY PROTECTION AURA (every 20 ticks) ===
# Apply Resistance I to nearby allies (not self)
execute store result score #am_tick ec.temp run time query gametime
scoreboard players operation #am_tick ec.temp %= #20 ec.const
execute if score #am_tick ec.temp matches 0 run effect give @a[distance=..8,sort=nearest,limit=10] resistance 2 0 true

# === FORTRESS ACTIVE ===
execute if entity @s[tag=ec.sp_fortress_active] run scoreboard players remove @s ec.sp_timer 1

# Process fortress zone per-tick
execute if entity @s[tag=ec.sp_fortress_active] as @e[tag=ec.sp_fortress_marker,sort=nearest,limit=1,distance=..20] at @s run function evercraft:spirit/abilities/ashcrown_mace/fortress_tick

# Fortress expire
execute if entity @s[tag=ec.sp_fortress_active,scores={ec.sp_timer=..0}] run function evercraft:spirit/abilities/ashcrown_mace/fortress_expire

# === JUDGMENT STRIKE STATE MACHINE ===
# State 1 = waiting for follow-up hit (10 tick delay)
execute if entity @s[tag=ec.sp_judging] run scoreboard players remove @s ec.sp_state 1
execute if entity @s[tag=ec.sp_judging,scores={ec.sp_state=..0}] run function evercraft:spirit/abilities/ashcrown_mace/judgment_hit2
