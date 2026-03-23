# Javelin Class — Per-Tick Loop
# Run when any player has ec.jv_active tag

# === STEP 1: Validate + hoplite check + resistance ===
# OPT: 3 @a[tag=ec.jv_active] scans → 1 (tick_player sub-function)
execute as @a[tag=ec.jv_active] run function evercraft:artifacts/javelin/tick_player

# === STEP 2: Decrement momentum timers (per-tick) ===
scoreboard players remove @a[tag=ec.jv_active,scores={ec.jv_thrown=1..}] ec.jv_thrown 1
scoreboard players remove @a[tag=ec.jv_active,scores={ec.jv_melee=1..}] ec.jv_melee 1

# === STEP 3: Decrement Aegis Burst hit window (per-tick) ===
scoreboard players remove @a[tag=ec.jv_active,scores={ec.jv_aegis_w=1..}] ec.jv_aegis_w 1
# Reset hit counter when window expires
execute as @a[tag=ec.jv_active,scores={ec.jv_aegis_w=0,ec.jv_aegis=1..}] run scoreboard players set @s ec.jv_aegis 0
