# Lightning Smash — Mjolnir (Rare Striker)
# Summon lightning at target (Striker: chains at 50+/75+ Impact)
# "Worthy" Enhancement: Every 3rd lightning proc within 60s triggers a mini-storm
# (chain to ALL mobs within 8 blocks regardless of Impact tier)

advancement revoke @s only evercraft:artifacts/abilities/lightning_smash_trigger

# Track "Worthy" chain counter
scoreboard players add @s ec.mjolnir_chain 1
schedule function evercraft:artifacts/abilities/mjolnir_worthy_decay 1200t

# === WORTHY CHECK: 3rd proc = mini-storm! ===
execute if score @s ec.mjolnir_chain matches 3.. at @s as @e[type=!player,type=!item,distance=..8,limit=8] at @s run summon lightning_bolt ~ ~ ~
execute if score @s ec.mjolnir_chain matches 3.. at @s run particle electric_spark ~ ~2 ~ 2 1 2 0.3 50
execute if score @s ec.mjolnir_chain matches 3.. at @s run particle minecraft:flash{color:-1} ~ ~5 ~ 0 0 0 0 1
execute if score @s ec.mjolnir_chain matches 3.. run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..30] ~ ~ ~ 1.0 0.5
execute if score @s ec.mjolnir_chain matches 3.. run playsound minecraft:entity.lightning_bolt.impact player @a[distance=..30] ~ ~ ~ 1.0 0.7
execute if score @s ec.mjolnir_chain matches 3.. run title @s actionbar {"text":"⚡ WORTHY ⚡","color":"yellow","bold":true}
execute if score @s ec.mjolnir_chain matches 3.. run scoreboard players set @s ec.mjolnir_chain 0
execute if score @s ec.mjolnir_chain matches 3.. run return 1

# === STRIKER IMPACT SCALING ===
# 75+ Impact: chain to 4 nearby targets
execute if score @s ec.sk_impact matches 75.. at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run summon lightning_bolt ~ ~ ~
execute if score @s ec.sk_impact matches 75.. at @s as @e[type=!player,type=!item,distance=..10,limit=4,sort=nearest,nbt={HurtTime:0s}] at @s run summon lightning_bolt ~ ~ ~
execute if score @s ec.sk_impact matches 75.. at @s run particle electric_spark ~ ~1 ~ 1 0.5 1 0.2 30
execute if score @s ec.sk_impact matches 75.. run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..30] ~ ~ ~ 0.8 0.8
execute if score @s ec.sk_impact matches 75.. run return 1

# 50-74 Impact: chain to 2 nearby targets
execute if score @s ec.sk_impact matches 50..74 at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run summon lightning_bolt ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 at @s as @e[type=!player,type=!item,distance=..10,limit=2,sort=nearest,nbt={HurtTime:0s}] at @s run summon lightning_bolt ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 at @s run particle electric_spark ~ ~1 ~ 0.8 0.5 0.8 0.2 20
execute if score @s ec.sk_impact matches 50..74 run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..30] ~ ~ ~ 0.6 0.9
execute if score @s ec.sk_impact matches 50..74 run return 1

# Default: single target
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run summon lightning_bolt ~ ~ ~
execute at @s run particle electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.1 15
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..30] ~ ~ ~ 0.5 1

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
