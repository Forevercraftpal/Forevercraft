# AoE Knockback - Knockback all nearby enemies
# Earthshaker ability (Striker: doubled KB at 50+ Impact, +Slowness at 75+ Impact)

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/abilities/aoe_knockback_trigger

# === STRIKER IMPACT SCALING ===
# 75+ Impact: KB doubled + Slowness I 3s
execute if score @s ec.sk_impact matches 75.. at @s run tag @e[type=!player,type=!item,type=!experience_orb,distance=..4] add ec.kb
execute if score @s ec.sk_impact matches 75.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 75.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 75.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 75.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 75.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 75.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 75.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 75.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 75.. as @e[tag=ec.kb] run effect give @s slowness 3 0 false
execute if score @s ec.sk_impact matches 75.. run tag @e[tag=ec.kb] remove ec.kb
execute if score @s ec.sk_impact matches 75.. at @s run particle explosion ~ ~0.5 ~ 1.5 0.2 1.5 0.1 25
execute if score @s ec.sk_impact matches 75.. run playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.7 0.5
execute if score @s ec.sk_impact matches 75.. run return 1

# 50-74 Impact: KB doubled
execute if score @s ec.sk_impact matches 50..74 at @s run tag @e[type=!player,type=!item,type=!experience_orb,distance=..4] add ec.kb
execute if score @s ec.sk_impact matches 50..74 as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 run tag @e[tag=ec.kb] remove ec.kb
execute if score @s ec.sk_impact matches 50..74 at @s run particle explosion ~ ~0.5 ~ 1.5 0.2 1.5 0.1 25
execute if score @s ec.sk_impact matches 50..74 run playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.6 0.6
execute if score @s ec.sk_impact matches 50..74 run return 1

# Default: normal KB (~1.6 blocks, 4 steps)
execute at @s run tag @e[type=!player,type=!item,type=!experience_orb,distance=..4] add ec.kb
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
tag @e[tag=ec.kb] remove ec.kb

# Visual/audio feedback
execute at @s run particle explosion ~ ~0.5 ~ 1 0.2 1 0.1 20
playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.5 0.7

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
