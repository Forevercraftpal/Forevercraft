# Gungnir (Ornate) — Melee: True Strike
# Glowing (5s) + Weakness I (3s) on target + enchant particles
# Cooldown: 15s

scoreboard players set @s ec.jv_cd 15

execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s glowing 5 0 true
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s weakness 3 0 true
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle enchant ~ ~1 ~ 0.3 0.5 0.3 0.5 15
playsound minecraft:entity.illusioner.prepare_mirror player @s ~ ~ ~ 0.8 1.2

scoreboard players add @s ach.weapon_abilities 1
