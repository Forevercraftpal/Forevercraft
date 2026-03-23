# Norroen Trident (Uncommon) — Thrown: Frost Burst
# 2 freeze damage + Slowness II (2s) in 2-block AoE at impact
# Cooldown: 8s

scoreboard players set @s ec.jv_cd 8

# Affinity boost
tag @s add ec.aff_attacker
scoreboard players set #aff_base ec.temp 2
function evercraft:affinity/boost_damage
data modify storage evercraft:affinity temp.damage_type set value "minecraft:freeze"

execute at @s as @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s as @e[type=!player,distance=..2] run function evercraft:affinity/deal_damage_typed with storage evercraft:affinity temp
execute at @s as @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run effect give @e[type=!player,distance=..2] slowness 2 1 true
execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run particle snowflake ~ ~1 ~ 1.0 0.5 1.0 0.03 20
playsound minecraft:block.powder_snow.break player @s ~ ~ ~ 0.8 0.8
tag @s remove ec.aff_attacker

scoreboard players add @s ach.weapon_abilities 1
