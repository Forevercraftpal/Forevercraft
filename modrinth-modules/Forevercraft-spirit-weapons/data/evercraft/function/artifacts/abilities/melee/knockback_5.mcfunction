# Melee Knockback 5 - Enhanced knockback on melee hit
# Knocks target back ~2.4 blocks (6 steps with collision checking)

advancement revoke @s only evercraft:artifacts/abilities/melee/knockback_5_trigger

# Tag the target entity
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run tag @s add ec.kb

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
execute at @s run particle crit ~ ~0.5 ~ 0.3 0.3 0.3 0.1 15
playsound minecraft:entity.player.attack.knockback player @s ~ ~ ~ 0.8 0.5
