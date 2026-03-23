# Depthsworn (Hoplite) — Per-Tick Passives
# Run as @s at @s (player holding Depthsworn)

# === PASSIVE: Resistance II while shield in offhand ===
execute if items entity @s weapon.offhand *[custom_data~{spirit_artifact:true}] run effect give @s resistance 2 1 true
execute unless items entity @s weapon.offhand *[custom_data~{spirit_artifact:true}] if items entity @s weapon.offhand minecraft:shield run effect give @s resistance 2 0 true

# === PROTECTION AURA: allies within 8 blocks take 15% less damage (Resistance I) ===
# Normal: 8 blocks, Twin: 12 blocks, Spirit tier: 12 blocks
execute if score @s ec.sp_twin matches 1 run effect give @a[tag=ec.player,distance=..12,tag=!ec.sp_active] resistance 2 0 true
execute if score @s ec.sp_tier matches 7 run effect give @a[tag=ec.player,distance=..12,tag=!ec.sp_active] resistance 2 0 true
execute unless score @s ec.sp_twin matches 1 unless score @s ec.sp_tier matches 7 run effect give @a[tag=ec.player,distance=..8,tag=!ec.sp_active] resistance 2 0 true

# === AEGIS WALL ZONE TICK ===
execute if score @s ec.sp_aegis_active matches 1.. run function evercraft:spirit/abilities/royal_trident/ability1_tick

# Decrement aegis timer
execute if score @s ec.sp_aegis_active matches 1.. run scoreboard players remove @s ec.sp_aegis_active 1

# Aegis wall expiry (owner-filtered for multiplayer)
scoreboard players operation #owner_check ec.temp = @s ec.sp_uid
execute if score @s ec.sp_aegis_active matches ..0 as @e[tag=ec.sp_aegis_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s run particle cloud ~ ~0.5 ~ 1 0.3 1 0.02 10
execute if score @s ec.sp_aegis_active matches ..0 as @e[tag=ec.sp_aegis_marker] if score @s ec.sp_owner = #owner_check ec.temp run kill @s

# === COUNTER THRUST COOLDOWN ===
execute if score @s ec.sp_counter_cd matches 1.. run scoreboard players remove @s ec.sp_counter_cd 1

# === PHALANX CHARGE STATE MACHINE ===
execute if score @s ec.sp_state matches 1.. run function evercraft:spirit/abilities/royal_trident/charge_step
# Safety: force-cancel charge if stuck >2s (cd2 starts at 400, charge takes ~7 ticks max)
execute if entity @s[tag=ec.sp_charging] unless score @s ec.sp_state matches 1.. unless score @s ec.sp_cd2 matches 380.. run function evercraft:spirit/abilities/royal_trident/charge_end
