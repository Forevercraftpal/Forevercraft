# Striker Mace System — Per-Tick Processing
# Called from main tick.mcfunction when any ec.sk_active player exists

# === STEP 1: Validate — remove if mainhand no longer has striker mace ===
execute as @a[tag=ec.sk_active] unless items entity @s weapon.mainhand mace[custom_data~{striker:true}] run function evercraft:artifacts/striker/remove

# === STEP 2: Sentinel mode state ===
# Gained shield in offhand
execute as @a[tag=ec.sk_active,tag=!ec.sk_sentinel] if items entity @s weapon.offhand minecraft:shield run function evercraft:artifacts/striker/sentinel_detect
# Lost shield from offhand
execute as @a[tag=ec.sk_active,tag=ec.sk_sentinel] unless items entity @s weapon.offhand minecraft:shield run function evercraft:artifacts/striker/sentinel_remove

# === STEPS 3-5: Per-player tick (impact, cap, sentinel effects) ===
# OPT: 6 @a scans → 1 per-player function call
execute as @a[tag=ec.sk_active] run function evercraft:artifacts/striker/tick_player

# === STEP 6: Combat freshness timer decrement ===
scoreboard players remove @a[tag=ec.sk_active,scores={ec.sk_combat=1..}] ec.sk_combat 1
