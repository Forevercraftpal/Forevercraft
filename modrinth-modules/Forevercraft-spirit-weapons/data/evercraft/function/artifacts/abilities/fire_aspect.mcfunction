# Fire Aspect - Set enemies on fire
# Burns target for 4 seconds (like Fire Aspect II)

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/abilities/fire_aspect_trigger

# Set the nearest recently damaged entity on fire
execute at @s as @e[type=!#evercraft:fire_immune,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run data merge entity @s {Fire:80s}

# Visual/audio feedback
execute at @s run particle flame ~ ~1 ~ 0.3 0.5 0.3 0.02 10
playsound minecraft:item.firecharge.use player @s ~ ~ ~ 0.5 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
