# Legendary Smash — Mace of Legends
# AoE damage + knockback in radius + Slowness
# (Striker: +3 AoE dmg at 50+ Impact, radius 8 at 75+ Impact)
advancement revoke @s only evercraft:artifacts/abilities/legendary_smash_trigger

# === STRIKER IMPACT SCALING ===
# 75+ Impact: 7 damage, radius 8, Slowness II
execute if score @s ec.sk_impact matches 75.. at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..8] run damage @s 7 minecraft:mob_attack
execute if score @s ec.sk_impact matches 75.. at @s run tag @e[type=!player,type=!item,type=!experience_orb,distance=..8] add ec.kb
execute if score @s ec.sk_impact matches 75.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 75.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 75.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 75.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 75.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 75.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 75.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 75.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 75.. as @e[tag=ec.kb] run effect give @s slowness 4 1 false
execute if score @s ec.sk_impact matches 75.. run tag @e[tag=ec.kb] remove ec.kb
execute if score @s ec.sk_impact matches 75.. at @s run particle explosion ~ ~0.5 ~ 4 0.2 4 0.1 30
execute if score @s ec.sk_impact matches 75.. run playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 1.0 0.4
execute if score @s ec.sk_impact matches 75.. run return 1

# 50-74 Impact: 7 damage, radius 5, Slowness II
execute if score @s ec.sk_impact matches 50..74 at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..5] run damage @s 7 minecraft:mob_attack
execute if score @s ec.sk_impact matches 50..74 at @s run tag @e[type=!player,type=!item,type=!experience_orb,distance=..5] add ec.kb
execute if score @s ec.sk_impact matches 50..74 as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 as @e[tag=ec.kb] run effect give @s slowness 3 1 false
execute if score @s ec.sk_impact matches 50..74 run tag @e[tag=ec.kb] remove ec.kb
execute if score @s ec.sk_impact matches 50..74 at @s run particle explosion ~ ~0.5 ~ 2.5 0.2 2.5 0.1 20
execute if score @s ec.sk_impact matches 50..74 run playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.9 0.5
execute if score @s ec.sk_impact matches 50..74 run return 1

# Default: 4 damage, radius 5, Slowness II
execute at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..5] run damage @s 4 minecraft:mob_attack
execute at @s run tag @e[type=!player,type=!item,type=!experience_orb,distance=..5] add ec.kb
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] run effect give @s slowness 3 1 false
tag @e[tag=ec.kb] remove ec.kb
execute at @s run particle explosion ~ ~0.5 ~ 2 0.2 2 0.1 15
playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.8 0.6

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
