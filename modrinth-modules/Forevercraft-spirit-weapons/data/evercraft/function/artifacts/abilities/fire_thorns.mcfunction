# Fire Thorns — Bulwark of Flames
# Sets attacker on fire + grants self brief Fire Resistance
advancement revoke @s only evercraft:artifacts/abilities/fire_thorns_trigger
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run data merge entity @s {Fire:60s}
effect give @s fire_resistance 5 0 false
execute at @s run particle flame ~ ~1 ~ 0.5 0.5 0.5 0.03 12
playsound minecraft:item.firecharge.use player @s ~ ~ ~ 0.5 1.2

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
