# Charged Strike — Vortex Pickaxe
# On hit: 33% chance to strike lightning at target
advancement revoke @s only evercraft:artifacts/abilities/charged_strike_trigger
execute store result score @s ec.artifact_roll run random value 1..3
execute if score @s ec.artifact_roll matches 1 at @s at @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run summon lightning_bolt ~ ~ ~
execute if score @s ec.artifact_roll matches 1 at @s run particle electric_spark ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute if score @s ec.artifact_roll matches 1 run playsound minecraft:entity.lightning_bolt.thunder player @s ~ ~ ~ 0.3 2

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
