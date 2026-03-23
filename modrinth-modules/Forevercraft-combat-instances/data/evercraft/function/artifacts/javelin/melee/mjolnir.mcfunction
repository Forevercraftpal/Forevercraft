# Mjolnir (Exquisite) — Melee: Lightning Strike
# Summon 1 lightning bolt at target
# Cooldown: 18s

scoreboard players set @s ec.jv_cd 18

execute at @s at @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run summon lightning_bolt ~ ~ ~
execute at @s run particle electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.1 15
playsound minecraft:entity.lightning_bolt.impact player @a[distance=..20] ~ ~ ~ 0.6 1.2

scoreboard players add @s ach.weapon_abilities 1
