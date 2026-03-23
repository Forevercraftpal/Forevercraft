# Permafrost — Frost Pickaxe
# On hit: Deep freeze — Slowness III + Mining Fatigue II + Freeze ticks
advancement revoke @s only evercraft:artifacts/abilities/permafrost_trigger
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s slowness 4 2 false
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s mining_fatigue 4 1 false
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run data merge entity @s {TicksFrozen:200}
execute at @s run particle snowflake ~ ~1 ~ 0.5 0.5 0.5 0.05 25
playsound minecraft:block.glass.break player @s ~ ~ ~ 0.6 0.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
