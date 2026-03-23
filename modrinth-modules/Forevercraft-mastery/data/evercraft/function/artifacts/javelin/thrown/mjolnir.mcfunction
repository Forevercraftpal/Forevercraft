# Mjolnir (Exquisite) — Thrown: Chain Lightning
# 3 lightning damage to 3 targets in 6-block radius at impact
# Cooldown: 18s

scoreboard players set @s ec.jv_cd 18

# Affinity boost
tag @s add ec.aff_attacker
scoreboard players set #aff_base ec.temp 3
function evercraft:affinity/boost_damage
data modify storage evercraft:affinity temp.damage_type set value "minecraft:lightning_bolt"

execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] as @e[type=!player,type=!item,distance=..6,limit=3,sort=nearest] run function evercraft:affinity/deal_damage_typed with storage evercraft:affinity temp
execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run summon lightning_bolt ~ ~ ~
execute at @s run particle electric_spark ~ ~1 ~ 1.5 1 1.5 0.2 30
playsound minecraft:entity.lightning_bolt.impact player @a[distance=..30] ~ ~ ~ 0.8 1.2
tag @s remove ec.aff_attacker

scoreboard players add @s ach.weapon_abilities 1
