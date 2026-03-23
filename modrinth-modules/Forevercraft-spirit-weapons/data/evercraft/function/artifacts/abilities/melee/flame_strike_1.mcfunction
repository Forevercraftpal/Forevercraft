# Flame Strike 1 - Sets target on fire for 4 seconds
# Replaces Fire Aspect 1

advancement revoke @s only evercraft:artifacts/abilities/melee/flame_strike_1_trigger

# Set target on fire
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run data merge entity @s {Fire:80s}

# Visual feedback
execute at @s run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 0.02 12
playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.5 1.4
