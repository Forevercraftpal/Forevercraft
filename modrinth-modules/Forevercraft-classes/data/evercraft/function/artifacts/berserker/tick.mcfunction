# Berserker Dual-Axe System — Per-Tick Processing
# Called from main tick.mcfunction when any ec.bk_active player exists

# === STEP 1: Validate — remove tag if player unequipped an axe (dragon fan counts) ===
execute as @a[tag=ec.bk_active] unless items entity @s weapon.mainhand #minecraft:axes[custom_data~{is_artifact:true}] unless items entity @s weapon.mainhand *[custom_data~{artifact:"dragon_fan"}] run function evercraft:artifacts/berserker/remove
execute as @a[tag=ec.bk_active] unless items entity @s weapon.offhand #minecraft:axes[custom_data~{is_artifact:true}] unless items entity @s weapon.offhand *[custom_data~{artifact:"dragon_fan"}] run function evercraft:artifacts/berserker/remove

# === STEP 2: Low HP check → Haste III ===
# Refreshed each tick with 2s duration (expires naturally when above 50%)
execute as @a[tag=ec.bk_active] run function evercraft:artifacts/berserker/check_low_hp

# === STEP 3: Rage tick (auto-swing + timer) ===
execute as @a[tag=ec.bk_active,scores={ec.bk_rage=1..}] at @s anchored eyes run function evercraft:artifacts/berserker/rage_tick
