# Crucible Trident (Exquisite) — Thrown: Crucible Explosion
# 6 explosion damage in 4-block AoE at impact
# Cooldown: 18s

scoreboard players set @s ec.jv_cd 18

# Affinity boost
tag @s add ec.aff_attacker
scoreboard players set #aff_base ec.temp 6
function evercraft:affinity/boost_damage
data modify storage evercraft:affinity temp.damage_type set value "minecraft:explosion"

execute at @s as @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s as @e[type=!player,distance=..4] run function evercraft:affinity/deal_damage_typed with storage evercraft:affinity temp
execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run particle explosion ~ ~1 ~ 0.8 0.8 0.8 0.1 8
playsound minecraft:entity.generic.explode player @a[distance=..30] ~ ~ ~ 0.8 0.8
tag @s remove ec.aff_attacker

scoreboard players add @s ach.weapon_abilities 1
