# Meteor Fist — Golden Gauntlet combo hit
# Triggered when hitting a target that already has Levitation
# Removes Levitation, deals 5 bonus damage, slam particles
effect clear @s levitation
damage @s 5 minecraft:mob_attack
execute at @s run particle explosion ~ ~0.5 ~ 0.5 0.3 0.5 0.1 8
execute at @s run particle crit ~ ~1 ~ 0.8 0.5 0.8 0.2 15
execute at @s run playsound minecraft:entity.generic.explode player @a[distance=..16] ~ ~ ~ 0.6 1.2
execute at @s run playsound minecraft:entity.iron_golem.damage player @a[distance=..16] ~ ~ ~ 0.8 0.5
