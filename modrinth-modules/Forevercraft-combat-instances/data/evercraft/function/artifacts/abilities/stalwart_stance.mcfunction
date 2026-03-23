# Stalwart Stance — Broadsword (Common Knight)
# On hit: 25% chance — +2 bonus damage + Resistance I (1s)
# The wide blade's momentum grants a brief defensive surge

advancement revoke @s only evercraft:artifacts/abilities/stalwart_stance_trigger

# 25% chance (1 in 4)
execute store result score @s ec.artifact_roll run random value 1..4
execute if score @s ec.artifact_roll matches 1 as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 2 minecraft:generic
execute if score @s ec.artifact_roll matches 1 run effect give @s resistance 1 0 false
execute if score @s ec.artifact_roll matches 1 as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle crit ~ ~1 ~ 0.3 0.5 0.3 0.1 10
execute if score @s ec.artifact_roll matches 1 run playsound minecraft:item.shield.block player @s ~ ~ ~ 0.6 0.8

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
