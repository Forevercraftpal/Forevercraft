# Knight Artifacts — Per-Tick Processing
# Manages fencer stance (no shield = +2 damage, +1 reach)

# === STEP 1: Verify active players still hold a knight sword ===
# If they swapped away, silently clear fencer bonuses and remove tag
# OPT: tag removal moved into deactivate (was 2 @a scans, now 1)
execute as @a[tag=ec.kt_active] unless items entity @s weapon.mainhand *[custom_data~{knight:true}] run function evercraft:artifacts/knight/deactivate

# === STEP 2: Fencer stance — toggle based on offhand shield ===
# No shield in offhand AND fencer not yet active → apply bonuses
execute as @a[tag=ec.kt_active,scores={ec.kt_fencer=0}] unless items entity @s weapon.offhand minecraft:shield run function evercraft:artifacts/knight/fencer_on

# Shield in offhand AND fencer currently active → remove bonuses
execute as @a[tag=ec.kt_active,scores={ec.kt_fencer=1}] if items entity @s weapon.offhand minecraft:shield run function evercraft:artifacts/knight/fencer_off
