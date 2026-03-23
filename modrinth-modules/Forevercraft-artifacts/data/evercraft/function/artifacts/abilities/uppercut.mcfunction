# Uppercut — Golden Gauntlet + Meteor Fist Enhancement
# Base: Launches target into the air with Levitation
# Enhancement: If target already has Levitation (from prior uppercut), deal 3x damage + slam down
advancement revoke @s only evercraft:artifacts/abilities/uppercut_trigger

# Check if target already has Levitation (Meteor Fist combo)
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] if data entity @s {active_effects:[{id:"minecraft:levitation"}]} run function evercraft:artifacts/abilities/meteor_fist
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] unless data entity @s {active_effects:[{id:"minecraft:levitation"}]} run effect give @s levitation 1 10 false

# Visual/audio feedback (base)
execute at @s run particle cloud ~ ~1 ~ 0.3 0.2 0.3 0.1 10
playsound minecraft:entity.iron_golem.attack player @s ~ ~ ~ 1 0.7

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
