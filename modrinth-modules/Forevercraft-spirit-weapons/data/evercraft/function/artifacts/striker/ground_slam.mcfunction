# Striker — Ground Slam
# Sneaking + hit while grounded = AoE centered on PLAYER (not target)
# Requires 25+ Impact, consumes all Impact
# At 75+ Impact: launches nearby enemies upward

# === STORE IMPACT LEVEL BEFORE CONSUMING ===
scoreboard players operation #sk_stored_impact ec.var = @s ec.sk_impact

# === SET COOLDOWN BY TIER ===
execute if score @s ec.sk_tier matches 1 run scoreboard players set @s ec.sk_cd 18
execute if score @s ec.sk_tier matches 2 run scoreboard players set @s ec.sk_cd 15
execute if score @s ec.sk_tier matches 3 run scoreboard players set @s ec.sk_cd 12
execute if score @s ec.sk_tier matches 4 run scoreboard players set @s ec.sk_cd 10
execute if score @s ec.sk_tier matches 5 run scoreboard players set @s ec.sk_cd 8
execute if score @s ec.sk_tier matches 6 run scoreboard players set @s ec.sk_cd 6

# === CONSUME ALL IMPACT ===
scoreboard players set @s ec.sk_impact 0

# === AFFINITY SETUP ===
tag @s add ec.aff_attacker
data modify storage evercraft:affinity temp.damage_type set value "minecraft:mob_attack"

# === 75+ Impact: 7 block radius + launch upward ===
execute if score #sk_stored_impact ec.var matches 75.. run scoreboard players set #aff_base ec.temp 8
execute if score #sk_stored_impact ec.var matches 75.. run function evercraft:affinity/boost_damage
execute if score #sk_stored_impact ec.var matches 75.. at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..7] run function evercraft:affinity/deal_damage_typed with storage evercraft:affinity temp
execute if score #sk_stored_impact ec.var matches 75.. at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..7] run effect give @s levitation 1 10 false
execute if score #sk_stored_impact ec.var matches 75.. at @s run particle explosion ~ ~0.5 ~ 3.5 0.3 3.5 0.1 30
execute if score #sk_stored_impact ec.var matches 75.. run tag @s remove ec.aff_attacker
execute if score #sk_stored_impact ec.var matches 75.. run return 1

# === 50-74 Impact: 5 block radius ===
execute if score #sk_stored_impact ec.var matches 50..74 run scoreboard players set #aff_base ec.temp 6
execute if score #sk_stored_impact ec.var matches 50..74 run function evercraft:affinity/boost_damage
execute if score #sk_stored_impact ec.var matches 50..74 at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..5] run function evercraft:affinity/deal_damage_typed with storage evercraft:affinity temp
execute if score #sk_stored_impact ec.var matches 50..74 at @s run particle explosion ~ ~0.5 ~ 2.5 0.3 2.5 0.1 20
execute if score #sk_stored_impact ec.var matches 50..74 run tag @s remove ec.aff_attacker
execute if score #sk_stored_impact ec.var matches 50..74 run return 1

# === 25-49 Impact: 3 block radius ===
scoreboard players set #aff_base ec.temp 4
function evercraft:affinity/boost_damage
execute at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..3] run function evercraft:affinity/deal_damage_typed with storage evercraft:affinity temp
execute at @s run particle explosion ~ ~0.5 ~ 1.5 0.3 1.5 0.1 15

# === VISUAL + AUDIO (always) ===
execute at @s run playsound minecraft:entity.iron_golem.attack player @a[distance=..20] ~ ~ ~ 1.0 0.3
execute at @s run playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.8 0.5
title @s actionbar [{"text":"Ground Slam!","color":"gold","bold":true}]
tag @s remove ec.aff_attacker

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
