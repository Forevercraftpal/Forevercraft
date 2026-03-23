# Ancient Trident (Rare) — Thrown: Tidal Strike
# 3 drown damage + Slowness I (3s) on target
# Cooldown: 12s

scoreboard players set @s ec.jv_cd 12

# Affinity boost
tag @s add ec.aff_attacker
scoreboard players set #aff_base ec.temp 3
function evercraft:affinity/boost_damage
data modify storage evercraft:affinity temp.damage_type set value "minecraft:drown"

execute at @s as @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run function evercraft:affinity/deal_damage_typed with storage evercraft:affinity temp
execute at @s as @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s slowness 3 0 true
execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run particle bubble ~ ~1 ~ 0.5 0.5 0.5 0.1 15
playsound minecraft:entity.trident.return player @s ~ ~ ~ 0.8 0.8
tag @s remove ec.aff_attacker

scoreboard players add @s ach.weapon_abilities 1
