# Sentinel — Fortress
# AoE taunt (8 blocks) + Resistance II 3s + allies get Resistance I 3s
# Costs 50 Impact. Replaces Ground Slam for Sentinels.

# Require 50+ Impact
execute unless score @s ec.sk_impact matches 50.. run return 0

# === SET COOLDOWN BY TIER ===
execute if score @s ec.sk_tier matches 1 run scoreboard players set @s ec.sk_fort_cd 20
execute if score @s ec.sk_tier matches 2 run scoreboard players set @s ec.sk_fort_cd 18
execute if score @s ec.sk_tier matches 3 run scoreboard players set @s ec.sk_fort_cd 15
execute if score @s ec.sk_tier matches 4 run scoreboard players set @s ec.sk_fort_cd 13
execute if score @s ec.sk_tier matches 5 run scoreboard players set @s ec.sk_fort_cd 10
execute if score @s ec.sk_tier matches 6 run scoreboard players set @s ec.sk_fort_cd 8

# === CONSUME 50 IMPACT ===
scoreboard players remove @s ec.sk_impact 50

# === TAUNT: Aggro all mobs in 8 blocks by dealing 0.1 damage from player ===
tag @s add ec.temp_fortress
execute at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..8] run damage @s 0.1 minecraft:mob_attack by @a[tag=ec.temp_fortress,limit=1]
tag @s remove ec.temp_fortress

# === SELF: Resistance II for 3 seconds ===
effect give @s resistance 3 1 false

# === ALLIES: Resistance I for 3 seconds (nearby players within 8 blocks, exclude self) ===
execute at @s as @a[distance=1..8] run effect give @s resistance 3 0 false

# === VISUAL + AUDIO ===
execute at @s run particle explosion ~ ~0.5 ~ 4 0.3 4 0.1 25
execute at @s run playsound minecraft:item.shield.block player @a[distance=..20] ~ ~ ~ 1.0 0.5
execute at @s run playsound minecraft:entity.iron_golem.repair player @a[distance=..20] ~ ~ ~ 0.8 0.7
title @s actionbar [{"text":"Fortress!","color":"aqua","bold":true}]

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
