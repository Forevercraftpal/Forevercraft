# Life Drain — Heartstealer
# Heals 2 hearts + applies Wither I to target
advancement revoke @s only evercraft:artifacts/abilities/life_drain_trigger
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s wither 3 0 false
effect give @s instant_health 1 0 false
effect give @s instant_health 1 0 false
execute at @s run particle damage_indicator ~ ~1 ~ 0.3 0.5 0.3 0.1 8
playsound minecraft:entity.wither.hurt player @s ~ ~ ~ 0.4 1.5
particle heart ~ ~1.5 ~ 0.3 0.3 0.3 0 4

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
