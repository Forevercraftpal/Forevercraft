# Striker — Empowered Impact Strike
# Consumes all Impact for AoE bonus damage
# Run as player with ec.sk_impact >= 25, activated via right-click

# === AFFINITY SETUP ===
tag @s add ec.aff_attacker
data modify storage evercraft:affinity temp.damage_type set value "minecraft:mob_attack"

# === CATACLYSM (100+) ===
execute if score @s ec.sk_impact matches 100.. run scoreboard players set #aff_base ec.temp 30
execute if score @s ec.sk_impact matches 100.. run function evercraft:affinity/boost_damage
execute if score @s ec.sk_impact matches 100.. at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..10] run function evercraft:affinity/deal_damage_typed with storage evercraft:affinity temp
execute if score @s ec.sk_impact matches 100.. at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..10] run effect give @s slowness 5 2 false
execute if score @s ec.sk_impact matches 100.. at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..10] run effect give @s mining_fatigue 5 1 false
execute if score @s ec.sk_impact matches 100.. at @s run particle explosion ~ ~0.5 ~ 5 0.3 5 0.1 30
execute if score @s ec.sk_impact matches 100.. at @s run playsound minecraft:entity.generic.explode player @a[distance=..30] ~ ~ ~ 1.0 0.4
execute if score @s ec.sk_impact matches 100.. run title @s actionbar [{"text":"CATACLYSM!","color":"dark_red","bold":true}]
execute if score @s ec.sk_impact matches 100.. run scoreboard players set @s ec.sk_impact 0
execute if score @s ec.sk_impact matches 0 run tag @s remove ec.aff_attacker
execute if score @s ec.sk_impact matches 0 run return 0

# === SHATTER (75-99) ===
execute if score @s ec.sk_impact matches 75.. run scoreboard players set #aff_base ec.temp 20
execute if score @s ec.sk_impact matches 75.. run function evercraft:affinity/boost_damage
execute if score @s ec.sk_impact matches 75.. at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..7] run function evercraft:affinity/deal_damage_typed with storage evercraft:affinity temp
execute if score @s ec.sk_impact matches 75.. at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..7] run effect give @s slowness 5 1 false
execute if score @s ec.sk_impact matches 75.. at @s run particle explosion ~ ~0.5 ~ 3.5 0.3 3.5 0.1 20
execute if score @s ec.sk_impact matches 75.. at @s run playsound minecraft:entity.generic.explode player @a[distance=..25] ~ ~ ~ 0.8 0.5
execute if score @s ec.sk_impact matches 75.. run title @s actionbar [{"text":"Shatter!","color":"light_purple","bold":true}]
execute if score @s ec.sk_impact matches 75.. run scoreboard players set @s ec.sk_impact 0
execute if score @s ec.sk_impact matches 0 run tag @s remove ec.aff_attacker
execute if score @s ec.sk_impact matches 0 run return 0

# === QUAKE (50-74) ===
execute if score @s ec.sk_impact matches 50.. run scoreboard players set #aff_base ec.temp 10
execute if score @s ec.sk_impact matches 50.. run function evercraft:affinity/boost_damage
execute if score @s ec.sk_impact matches 50.. at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..5] run function evercraft:affinity/deal_damage_typed with storage evercraft:affinity temp
execute if score @s ec.sk_impact matches 50.. at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..5] run effect give @s slowness 3 0 false
execute if score @s ec.sk_impact matches 50.. at @s run particle explosion ~ ~0.5 ~ 2.5 0.3 2.5 0.1 15
execute if score @s ec.sk_impact matches 50.. at @s run playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.6 0.7
execute if score @s ec.sk_impact matches 50.. run title @s actionbar [{"text":"Quake!","color":"aqua","bold":true}]
execute if score @s ec.sk_impact matches 50.. run scoreboard players set @s ec.sk_impact 0
execute if score @s ec.sk_impact matches 0 run tag @s remove ec.aff_attacker
execute if score @s ec.sk_impact matches 0 run return 0

# === TREMOR (25-49) ===
scoreboard players set #aff_base ec.temp 5
function evercraft:affinity/boost_damage
execute at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..3] run function evercraft:affinity/deal_damage_typed with storage evercraft:affinity temp
# Knockback (0.4 blocks per step, stops at solid blocks)
execute at @s run tag @e[type=!player,type=!item,type=!experience_orb,distance=..3] add ec.kb
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
tag @e[tag=ec.kb] remove ec.kb
execute at @s run particle explosion ~ ~0.5 ~ 1.5 0.2 1.5 0.1 10
execute at @s run playsound minecraft:entity.generic.explode player @a[distance=..15] ~ ~ ~ 0.4 0.9
title @s actionbar [{"text":"Tremor!","color":"green","bold":true}]
scoreboard players set @s ec.sk_impact 0
tag @s remove ec.aff_attacker
