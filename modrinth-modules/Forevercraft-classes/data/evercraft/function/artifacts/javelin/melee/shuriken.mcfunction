# Shuriken of Ice (Ornate) — Melee: Frozen Strike
# 1 freeze damage + Slowness II (2s) on target
# Cooldown: 15s

scoreboard players set @s ec.jv_cd 15

# Affinity boost
tag @s add ec.aff_attacker
scoreboard players set #aff_base ec.temp 1
function evercraft:affinity/boost_damage
data modify storage evercraft:affinity temp.damage_type set value "minecraft:freeze"

execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run function evercraft:affinity/deal_damage_typed with storage evercraft:affinity temp
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s slowness 2 1 true
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle snowflake ~ ~1 ~ 0.3 0.5 0.3 0.02 12
playsound minecraft:block.glass.break player @s ~ ~ ~ 0.7 1.5
tag @s remove ec.aff_attacker

scoreboard players add @s ach.weapon_abilities 1
