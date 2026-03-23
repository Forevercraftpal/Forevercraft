# Rogue Artifacts — Per-Tick Processing
# Manages auto-swing timer and fires attacks when timer expires

# === STEP 1: Verify active players still hold a rogue dagger ===
# OPT: 4 @a scans → 1 (deactivate sub-function)
execute as @a[tag=ec.rg_active] unless items entity @s weapon.mainhand *[custom_data~{rogue:true}] run function evercraft:artifacts/rogue/deactivate

# === STEP 2: Dual wield + shield state update ===
# OPT: 8 @a scans → 1 (update_state sub-function)
execute as @a[tag=ec.rg_active] run function evercraft:artifacts/rogue/update_state

# === STEP 3: Decrement swing timer (skip shielded) ===
scoreboard players remove @a[tag=ec.rg_active,tag=!ec.rg_shielded,scores={ec.rg_swing=1..}] ec.rg_swing 1

# === STEP 4: Fire swing when timer hits 0 (skip shielded) ===
execute as @a[tag=ec.rg_active,tag=!ec.rg_shielded,scores={ec.rg_swing=..0}] at @s anchored eyes run function evercraft:artifacts/rogue/swing
