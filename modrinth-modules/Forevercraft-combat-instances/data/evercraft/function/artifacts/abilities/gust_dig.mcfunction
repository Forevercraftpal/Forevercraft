# Gust Dig — Vortex Shovel
# On hit: Wind blast — launches target upward
advancement revoke @s only evercraft:artifacts/abilities/gust_dig_trigger
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run data merge entity @s {Motion:[0.0,1.2,0.0]}
execute at @s run particle white_ash ~ ~1 ~ 1 0.5 1 0.5 30
playsound minecraft:entity.breeze.wind_burst player @s ~ ~ ~ 0.8 1

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
