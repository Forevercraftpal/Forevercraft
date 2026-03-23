# Ranged Punch 4 - Knockback arrows
# Knocks target back ~2.4 blocks on arrow hit (6 steps with collision checking)

advancement revoke @s only evercraft:artifacts/abilities/ranged/punch_4_trigger

# Tag the target entity
execute at @s as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run tag @s add ec.kb

# Knock target away from player (0.4 blocks per step, stops at solid blocks)
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~

# Cleanup
tag @e[tag=ec.kb] remove ec.kb

# Visual feedback
execute at @s run particle cloud ~ ~0.5 ~ 0.2 0.2 0.2 0.05 7
playsound minecraft:entity.player.attack.knockback player @s ~ ~ ~ 0.6 0.7999999999999999
