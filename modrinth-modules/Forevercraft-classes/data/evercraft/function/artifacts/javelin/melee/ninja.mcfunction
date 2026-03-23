# Ninja Trident (Mythical) — Melee: Shadow Veil
# Darkness I (2s) on target + Invisibility (2s) on self
# Cooldown: 22s

scoreboard players set @s ec.jv_cd 22

execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s darkness 2 0 true
effect give @s invisibility 2 0 true
execute at @s run particle large_smoke ~ ~1 ~ 0.3 0.5 0.3 0.05 15
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 0.5 1.5

scoreboard players add @s ach.weapon_abilities 1
