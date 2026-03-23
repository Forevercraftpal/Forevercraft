# Ninja Trident (Mythical) — Thrown: Shadow Step
# Teleport to target + Invisibility (5s) + Speed II (3s)
# Cooldown: 22s

scoreboard players set @s ec.jv_cd 22

execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run tp @s ~ ~ ~
effect give @s invisibility 5 0 true
effect give @s speed 3 1 false
execute at @s run particle large_smoke ~ ~1 ~ 0.3 0.5 0.3 0.05 20
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1.2

scoreboard players add @s ach.weapon_abilities 1
