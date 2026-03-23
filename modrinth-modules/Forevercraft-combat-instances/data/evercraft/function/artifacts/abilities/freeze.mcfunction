# Freeze - Slow/freeze enemies on hit
# Applies slowness and mining fatigue

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/abilities/freeze_trigger

# Apply slowness to nearest hurt entity
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s slowness 3 2 false
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s mining_fatigue 3 1 false

# Visual/audio feedback
execute at @s run particle snowflake ~ ~1 ~ 0.5 0.5 0.5 0.05 20
playsound minecraft:block.glass.break player @s ~ ~ ~ 0.5 0.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
