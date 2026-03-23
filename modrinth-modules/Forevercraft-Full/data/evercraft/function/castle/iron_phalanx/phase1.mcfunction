# The Iron Phalanx — Phase 1: The Formation (100%-66% HP)
# Boss with 50% frontal DR, summons Shield Bearers every 15s (300 ticks)
# Boss attacks with trident thrust: 12 damage, 4-block range

# === FRONTAL DAMAGE REDUCTION ===
# Apply Resistance I (20% DR) + we add extra via armor attribute for frontal feel
# Resistance I gives ~20% reduction, simulating frontal shield defense
execute as @e[tag=ic.iron_phalanx,limit=1] run effect give @s resistance 2 0 true

# === SUMMON SHIELD BEARERS (every 300 ticks, max 6) ===
execute if score #ic_phalanx_bearer_cd ec.var matches ..0 run function evercraft:castle/iron_phalanx/spawn_bearers
execute if score #ic_phalanx_bearer_cd ec.var matches ..0 run scoreboard players set #ic_phalanx_bearer_cd ec.var 300

# === TRIDENT THRUST (every 60 ticks — 3 seconds) ===
execute if score #ic_phalanx_cd ec.var matches ..0 as @e[tag=ic.iron_phalanx,limit=1] at @s run function evercraft:castle/iron_phalanx/trident_thrust
execute if score #ic_phalanx_cd ec.var matches ..0 run scoreboard players set #ic_phalanx_cd ec.var 60

# === COUNTER THRUST (on being hit — checked by proximity damage feedback) ===
# Detect recently-hit state via HurtTime
execute as @e[tag=ic.iron_phalanx,limit=1,nbt={HurtTime:10s}] at @s run function evercraft:castle/iron_phalanx/counter_thrust
