# Explosive Impact - Small explosion on hit (no terrain damage)
# 25% chance to trigger (Striker: 40% at 50+ Impact, radius 5 at 75+ Impact)

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/abilities/explosive_impact_trigger

# === STRIKER IMPACT SCALING ===
# 75+ Impact: 40% chance (2 in 5), radius 5
execute if score @s ec.sk_impact matches 75.. store result score @s ec.artifact_roll run random value 1..5
execute if score @s ec.sk_impact matches 75.. if score @s ec.artifact_roll matches 1..2 as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle explosion ~ ~1 ~ 1 0.5 1 0.1 5
execute if score @s ec.sk_impact matches 75.. if score @s ec.artifact_roll matches 1..2 as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.8 1.0
execute if score @s ec.sk_impact matches 75.. if score @s ec.artifact_roll matches 1..2 as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s as @e[type=!player,distance=..5] run damage @s 4 minecraft:explosion
execute if score @s ec.sk_impact matches 75.. run return 1

# 50-74 Impact: 40% chance (2 in 5), radius 3
execute if score @s ec.sk_impact matches 50..74 store result score @s ec.artifact_roll run random value 1..5
execute if score @s ec.sk_impact matches 50..74 if score @s ec.artifact_roll matches 1..2 as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle explosion ~ ~1 ~ 0.5 0.5 0.5 0.1 3
execute if score @s ec.sk_impact matches 50..74 if score @s ec.artifact_roll matches 1..2 as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.7 1.2
execute if score @s ec.sk_impact matches 50..74 if score @s ec.artifact_roll matches 1..2 as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s as @e[type=!player,distance=..3] run damage @s 4 minecraft:explosion
execute if score @s ec.sk_impact matches 50..74 run return 1

# Default: 25% chance (1 in 4), radius 3
execute store result score @s ec.artifact_roll run random value 1..4

# Find the hit entity and create explosion at THEIR location (not player's)
execute if score @s ec.artifact_roll matches 1 as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle explosion ~ ~1 ~ 0.5 0.5 0.5 0.1 3
execute if score @s ec.artifact_roll matches 1 as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.7 1.2
execute if score @s ec.artifact_roll matches 1 as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s as @e[type=!player,distance=..3] run damage @s 4 minecraft:explosion

# Visual/audio feedback (sparks always on hit target)
execute as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle lava ~ ~1 ~ 0.3 0.3 0.3 0.02 5

# === Dimensional Rift (Portal Staff only) — sneak + hit = portal trap ===
execute if predicate evercraft:is_sneaking if items entity @s weapon.mainhand *[custom_data~{artifact:"portal_staff"}] run function evercraft:artifacts/abilities/dimensional_rift

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
