# Flame Ward — Dragonslayer Shield
# Grants Fire Resistance + sets attacker on fire
advancement revoke @s only evercraft:artifacts/abilities/flame_ward_trigger
effect give @s fire_resistance 10 0 false
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run data merge entity @s {Fire:60s}
execute at @s run particle flame ~ ~1 ~ 0.3 0.5 0.3 0.02 10
playsound minecraft:item.firecharge.use player @s ~ ~ ~ 0.5 1

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
