# Dragon Incarnate — Per-Tick Processing
# Called from main tick.mcfunction when any ec.di_active player exists

# === STEP 1: Validate — remove tag if player unequipped Dragon Fan ===
execute as @a[tag=ec.di_active] unless items entity @s weapon.mainhand *[custom_data~{dragon_incarnate:true}] run function evercraft:artifacts/dragon_incarnate/remove

# === STEP 2: Inferno Burst cooldown tick ===
scoreboard players remove @a[tag=ec.di_active,scores={ec.di_burst_cd=1..}] ec.di_burst_cd 1
