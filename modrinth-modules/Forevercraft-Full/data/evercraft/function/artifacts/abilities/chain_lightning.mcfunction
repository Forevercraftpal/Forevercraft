# Chain Lightning — Stormlander
# 50% chance to strike lightning + damages 3 nearby enemies
# (Striker: guaranteed at 50+ Impact, 5 targets at 75+ Impact)
advancement revoke @s only evercraft:artifacts/abilities/chain_lightning_trigger

# === STRIKER IMPACT SCALING ===
# 75+ Impact: guaranteed lightning + 5 targets
execute if score @s ec.sk_impact matches 75.. at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run summon lightning_bolt ~ ~ ~
execute if score @s ec.sk_impact matches 75.. at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] as @e[type=!player,type=!item,distance=..8,limit=5,sort=nearest] run damage @s 3 minecraft:lightning_bolt
execute if score @s ec.sk_impact matches 75.. at @s run particle electric_spark ~ ~1 ~ 2 0.5 2 0.2 40
execute if score @s ec.sk_impact matches 75.. run playsound minecraft:entity.lightning_bolt.impact player @a[distance=..30] ~ ~ ~ 0.8 1.2
execute if score @s ec.sk_impact matches 75.. run return 1

# 50-74 Impact: guaranteed lightning + 3 targets
execute if score @s ec.sk_impact matches 50..74 at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run summon lightning_bolt ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] as @e[type=!player,type=!item,distance=..5,limit=3,sort=nearest] run damage @s 3 minecraft:lightning_bolt
execute if score @s ec.sk_impact matches 50..74 at @s run particle electric_spark ~ ~1 ~ 1.5 0.5 1.5 0.2 30
execute if score @s ec.sk_impact matches 50..74 run playsound minecraft:entity.lightning_bolt.impact player @a[distance=..30] ~ ~ ~ 0.6 1.3
execute if score @s ec.sk_impact matches 50..74 run return 1

# Default: 50% chance lightning + chain damage (only on proc)
execute store result score @s ec.artifact_roll run random value 1..2
execute if score @s ec.artifact_roll matches 1 at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run summon lightning_bolt ~ ~ ~
execute if score @s ec.artifact_roll matches 1 at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] as @e[type=!player,type=!item,distance=..5,limit=3,sort=nearest] run damage @s 3 minecraft:lightning_bolt
execute if score @s ec.artifact_roll matches 1 at @s run particle electric_spark ~ ~1 ~ 1 0.5 1 0.2 25
execute if score @s ec.artifact_roll matches 1 run playsound minecraft:entity.lightning_bolt.impact player @a[distance=..30] ~ ~ ~ 0.5 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
