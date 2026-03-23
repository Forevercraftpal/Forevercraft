# Tidal Strike — Prismarine Pickaxe
# On hit: Pull target toward player + Slowness
advancement revoke @s only evercraft:artifacts/abilities/tidal_strike_trigger
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s slowness 3 1 false

# Pull target toward player (0.4 blocks per step, stops at solid blocks)
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run tag @s add ec.kb
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
tag @e[tag=ec.kb] remove ec.kb

execute at @s run particle bubble_pop ~ ~1 ~ 0.3 0.5 0.3 0.1 12
playsound minecraft:entity.player.splash player @s ~ ~ ~ 0.5 1.2

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
