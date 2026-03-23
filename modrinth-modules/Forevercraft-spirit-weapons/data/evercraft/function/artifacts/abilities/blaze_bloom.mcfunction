# Blaze Bloom — Netherwalker Hoe
# On hit: Fire wave — Fire Resistance to self + ignite nearby enemies
advancement revoke @s only evercraft:artifacts/abilities/blaze_bloom_trigger
effect give @s fire_resistance 10 0 false
execute at @s as @e[type=!#evercraft:fire_immune,type=!player,distance=..5,limit=3,sort=nearest] run data merge entity @s {Fire:60s}
execute at @s run particle flame ~ ~0.5 ~ 1.5 0.3 1.5 0.05 20
playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.5 0.8

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
