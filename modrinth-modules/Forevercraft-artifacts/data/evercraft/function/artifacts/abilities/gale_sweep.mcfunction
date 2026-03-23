# Gale Sweep — Whirlwind + Cyclone Enhancement
# Base: Knockback + 2 damage to all enemies within 4 blocks
# Enhancement: If 4+ mobs hit, all get Levitation I (1s) + player gets Speed II (5s)
advancement revoke @s only evercraft:artifacts/abilities/gale_sweep_trigger

# Count mobs that will be hit
execute store result score @s ec.artifact_roll at @s if entity @e[type=!player,type=!item,type=!experience_orb,distance=..4]

# Base: 2 AoE damage
execute at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..4] run damage @s 2 minecraft:mob_attack

# Knockback (0.4 blocks per step, stops at solid blocks)
execute at @s run tag @e[type=!player,type=!item,type=!experience_orb,distance=..4] add ec.kb
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
tag @e[tag=ec.kb] remove ec.kb

# Cyclone: 4+ mobs → Levitation + Speed II
execute if score @s ec.artifact_roll matches 4.. at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..4] run effect give @s levitation 1 0 false
execute if score @s ec.artifact_roll matches 4.. run effect give @s speed 5 1 false
execute if score @s ec.artifact_roll matches 4.. run title @s actionbar {text:"Cyclone!",color:"#87CEEB",bold:true}
execute if score @s ec.artifact_roll matches 4.. at @s run particle cloud ~ ~1 ~ 1.5 1 1.5 0.1 30

# Reset temp score
scoreboard players set @s ec.artifact_roll 0

execute at @s run particle sweep_attack ~ ~1 ~ 1 0.3 1 0.1 8
playsound minecraft:entity.player.attack.sweep player @a[distance=..20] ~ ~ ~ 1 0.8

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
