# Cleaving Arc — Double Axe (Uncommon Berserker)
# On hit: damages a second mob within 3 blocks for 3 damage (mini sweep)

advancement revoke @s only evercraft:artifacts/abilities/cleaving_arc_trigger

# Tag the primary target so we can skip it
execute as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run tag @s add ec.cleave_primary

# Find a second mob near the primary target and damage it
execute at @e[tag=ec.cleave_primary,limit=1] as @e[type=!player,distance=..3,limit=1,sort=nearest,tag=!ec.cleave_primary] run damage @s 3 minecraft:generic
execute at @e[tag=ec.cleave_primary,limit=1] as @e[type=!player,distance=..3,limit=1,sort=nearest,tag=!ec.cleave_primary] at @s run particle sweep_attack ~ ~1 ~ 0 0 0 0 1

# Visual + audio for the arc
execute at @e[tag=ec.cleave_primary,limit=1] run particle sweep_attack ~ ~1 ~ 0.5 0.3 0.5 0 3
playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 0.8 1.0

# Cleanup tag
tag @e[tag=ec.cleave_primary] remove ec.cleave_primary

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
