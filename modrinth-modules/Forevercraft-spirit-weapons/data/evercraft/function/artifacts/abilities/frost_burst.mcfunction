# Frost Burst — Leviathan Axe
# Freezes all enemies in radius (Slowness III + Mining Fatigue II)
advancement revoke @s only evercraft:artifacts/abilities/frost_burst_trigger
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @e[type=!player,distance=..4] slowness 4 2 false
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @e[type=!player,distance=..4] mining_fatigue 4 1 false
execute at @s run particle snowflake ~ ~1 ~ 1.5 0.5 1.5 0.05 30
playsound minecraft:block.glass.break player @s ~ ~ ~ 0.7 0.3

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
