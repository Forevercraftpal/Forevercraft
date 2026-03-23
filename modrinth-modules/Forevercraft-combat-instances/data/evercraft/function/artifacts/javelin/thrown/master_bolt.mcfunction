# Master Bolt (Mythical) — Thrown: Sky King's Wrath
# 3 lightning bolts around target location
# Cooldown: 10s

scoreboard players set @s ec.jv_cd 10

execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run summon lightning_bolt ~ ~ ~
execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run summon lightning_bolt ~2 ~ ~
execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run summon lightning_bolt ~ ~ ~2
execute at @s run particle electric_spark ~ ~1 ~ 1 1 1 0.3 30
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..30] ~ ~ ~ 1 0.8

scoreboard players add @s ach.weapon_abilities 1
