# Wind Gust - Activate wind charge burst on the hit mob
# Called when player attacks with Draconic Gale (non-sneaking)

# Find the nearest mob that was just attacked (closest to player, recently hurt)
execute at @s as @e[type=!player,type=!item,type=!experience_orb,type=!arrow,type=!marker,distance=..6,sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run summon wind_charge ~ ~0.5 ~ {HasBeenShot:1b,acceleration_power:[0.0,0.0,0.0],Tags:["dragon_fan_wind_burst"]}

# Sound and visual at player
playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~ 1.0 1.0
particle gust ~ ~1.5 ~ 0.3 0.3 0.3 0.1 5

# Brief actionbar notification
title @s actionbar {text:"Wind Gust!",color:"aqua"}
