# Master Bolt (Mythical) — Melee: Zeus's Touch
# 2 lightning damage + Weakness I (2s) on target
# Cooldown: 10s

scoreboard players set @s ec.jv_cd 10

# Affinity boost
tag @s add ec.aff_attacker
scoreboard players set #aff_base ec.temp 2
function evercraft:affinity/boost_damage
data modify storage evercraft:affinity temp.damage_type set value "minecraft:lightning_bolt"

execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run function evercraft:affinity/deal_damage_typed with storage evercraft:affinity temp
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s weakness 2 0 true
execute at @s run particle electric_spark ~ ~1 ~ 0.8 0.8 0.8 0.2 25
playsound minecraft:entity.lightning_bolt.impact player @a[distance=..20] ~ ~ ~ 0.5 1.0
tag @s remove ec.aff_attacker

scoreboard players add @s ach.weapon_abilities 1
