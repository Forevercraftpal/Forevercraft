# Gungnir (Ornate) — Thrown: Odin's Throw
# Glowing (6s) + Weakness I (4s) on target + enchant particles
# Cooldown: 15s

scoreboard players set @s ec.jv_cd 15

execute at @s as @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s glowing 6 0 true
execute at @s as @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s weakness 4 0 true
execute at @s as @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle enchant ~ ~1 ~ 0.5 0.5 0.5 0.5 20
playsound minecraft:entity.illusioner.prepare_mirror player @s ~ ~ ~ 0.8 1.0

scoreboard players add @s ach.weapon_abilities 1
