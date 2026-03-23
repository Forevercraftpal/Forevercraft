# Opportunist — Dagger (Common Rogue)
# On hit: 30% chance to deal +2 bonus damage — exploiting openings
# Represents the rogue's knack for finding weak points

advancement revoke @s only evercraft:artifacts/abilities/opportunist_trigger

# 30% chance (3 in 10)
execute store result score @s ec.artifact_roll run random value 1..10
execute if score @s ec.artifact_roll matches 1..3 as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 2 minecraft:generic
execute if score @s ec.artifact_roll matches 1..3 as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle crit ~ ~1 ~ 0.2 0.3 0.2 0.1 6
execute if score @s ec.artifact_roll matches 1..3 run playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 0.5 1.8

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
