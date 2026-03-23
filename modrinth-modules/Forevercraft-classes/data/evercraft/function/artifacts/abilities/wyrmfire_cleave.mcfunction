# Wyrmfire Cleave — Dragonmaster Axe
# AoE fire damage on hit: sets target + nearby enemies on fire, deals fire damage in radius
advancement revoke @s only evercraft:artifacts/abilities/wyrmfire_cleave_trigger

# Find hit entity, apply fire + AoE burst around it
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run function evercraft:artifacts/abilities/wyrmfire_cleave_burst

# Visual + audio from player
execute at @s run particle flame ~ ~0.5 ~ 0.5 0.5 0.5 0.03 20
playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.6 0.8

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
