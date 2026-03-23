# Frost Drain — Frostmourne
# Applies Slowness III + heals attacker on hit
advancement revoke @s only evercraft:artifacts/abilities/frost_drain_trigger
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s slowness 3 2 false
effect give @s instant_health 1 0 false
execute at @s run particle snowflake ~ ~1 ~ 0.5 0.5 0.5 0.05 15
playsound minecraft:block.glass.break player @s ~ ~ ~ 0.5 0.5
particle heart ~ ~1.5 ~ 0.2 0.2 0.2 0 2

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
