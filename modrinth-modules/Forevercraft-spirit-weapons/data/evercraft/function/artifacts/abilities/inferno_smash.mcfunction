# Inferno Smash — Dragonheart Mace
# Fire AoE + sets all nearby enemies on fire
# (Striker: +3 fire dmg at 50+ Impact, doubled fire duration at 75+ Impact)
advancement revoke @s only evercraft:artifacts/abilities/inferno_smash_trigger

# === STRIKER IMPACT SCALING ===
# 75+ Impact: doubled fire duration (160s) + 6 fire damage + wider AoE (5 blocks)
execute if score @s ec.sk_impact matches 75.. at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] as @e[type=!player,type=!item,distance=..5] run data merge entity @s {Fire:160s}
execute if score @s ec.sk_impact matches 75.. at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] as @e[type=!player,type=!item,distance=..5] run damage @s 6 minecraft:on_fire
execute if score @s ec.sk_impact matches 75.. at @s run particle flame ~ ~1 ~ 2 0.5 2 0.05 50
execute if score @s ec.sk_impact matches 75.. run playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.8 1.0
execute if score @s ec.sk_impact matches 75.. run return 1

# 50-74 Impact: normal fire duration (80s) + 6 fire damage
execute if score @s ec.sk_impact matches 50..74 at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] as @e[type=!player,type=!item,distance=..3] run data merge entity @s {Fire:80s}
execute if score @s ec.sk_impact matches 50..74 at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] as @e[type=!player,type=!item,distance=..3] run damage @s 6 minecraft:on_fire
execute if score @s ec.sk_impact matches 50..74 at @s run particle flame ~ ~1 ~ 1.5 0.5 1.5 0.05 40
execute if score @s ec.sk_impact matches 50..74 run playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.7 1.1
execute if score @s ec.sk_impact matches 50..74 run return 1

# Default: normal fire + 3 fire damage
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] as @e[type=!player,type=!item,distance=..3] run data merge entity @s {Fire:80s}
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] as @e[type=!player,type=!item,distance=..3] run damage @s 3 minecraft:on_fire
execute at @s run particle flame ~ ~1 ~ 1 0.5 1 0.05 30
playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.6 1.2

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
