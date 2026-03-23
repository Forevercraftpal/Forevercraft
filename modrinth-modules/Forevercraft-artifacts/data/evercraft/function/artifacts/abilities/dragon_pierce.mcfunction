# Dragon Pierce — Dragonmaster Lance
# On hit: Fire damage + AoE knockback + ignite
advancement revoke @s only evercraft:artifacts/abilities/dragon_pierce_trigger
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 5 minecraft:on_fire
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run data merge entity @s {Fire:60s}

# AoE knockback to nearby unhurt mobs (0.4 blocks per step, stops at solid blocks)
execute at @s run tag @e[type=!player,type=!item,distance=..6,limit=5,sort=nearest,nbt={HurtTime:0s}] add ec.kb
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
tag @e[tag=ec.kb] remove ec.kb

execute at @s run particle flame ~ ~1 ~ 0.5 0.5 0.5 0.1 25
playsound minecraft:entity.ender_dragon.growl player @a[distance=..20] ~ ~ ~ 0.5 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
