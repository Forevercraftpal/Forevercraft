# Wide Sweep — Claymore + Momentum Cleave Enhancement
# Base: Damages all enemies in 5 block radius
# Enhancement: Each mob hit adds +1 cleave stack (max 5). Next sweep deals +1 damage per stack. Resets after 3s.
advancement revoke @s only evercraft:artifacts/abilities/wide_sweep_trigger

# Count mobs that will be hit (store in temp)
execute store result score @s ec.artifact_roll at @s if entity @e[type=!player,type=!item,type=!experience_orb,distance=..5]

# Base sweep damage (2) + bonus from stacks
execute at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..5] run damage @s 2 minecraft:mob_attack
execute if score @s ec.cleave_stacks matches 1 at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..5] run damage @s 1 minecraft:mob_attack
execute if score @s ec.cleave_stacks matches 2 at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..5] run damage @s 2 minecraft:mob_attack
execute if score @s ec.cleave_stacks matches 3 at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..5] run damage @s 3 minecraft:mob_attack
execute if score @s ec.cleave_stacks matches 4 at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..5] run damage @s 4 minecraft:mob_attack
execute if score @s ec.cleave_stacks matches 5.. at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..5] run damage @s 5 minecraft:mob_attack

# Feedback — enhanced particles when stacks are high
execute at @s run particle sweep_attack ~ ~1 ~ 1.5 0.3 1.5 0.1 10
execute if score @s ec.cleave_stacks matches 3.. at @s run particle crit ~ ~1 ~ 1 0.5 1 0.1 8
playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1 0.6

# Display stack count if active
execute if score @s ec.cleave_stacks matches 1.. run title @s actionbar [{text:"Momentum: ",color:"gray"},{score:{"name":"@s","objective":"ec.cleave_stacks"},color:"yellow"},{text:"/5",color:"gray"}]

# Add stacks from this sweep (number of mobs hit, capped at 5)
scoreboard players operation @s ec.cleave_stacks += @s ec.artifact_roll
execute if score @s ec.cleave_stacks matches 6.. run scoreboard players set @s ec.cleave_stacks 5

# Reset per-player decay timer (3 seconds)
scoreboard players set @s ec.cleave_cd 3

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
