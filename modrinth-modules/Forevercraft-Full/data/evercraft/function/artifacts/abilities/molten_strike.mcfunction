# Molten Strike — Netherwalker Pickaxe
# On hit: Engulf in flames — fire damage + ignite
advancement revoke @s only evercraft:artifacts/abilities/molten_strike_trigger
execute at @s as @e[type=!#evercraft:fire_immune,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run data merge entity @s {Fire:100s}
execute at @s as @e[type=!#evercraft:fire_immune,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 3 minecraft:on_fire
execute at @s run particle flame ~ ~1 ~ 0.3 0.5 0.3 0.05 15
playsound minecraft:item.firecharge.use player @s ~ ~ ~ 0.6 0.8

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
