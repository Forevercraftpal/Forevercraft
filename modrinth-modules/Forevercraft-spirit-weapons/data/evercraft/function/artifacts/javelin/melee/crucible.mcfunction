# Crucible Trident (Exquisite) — Melee: Shockwave
# AoE knockback + 1 explosion damage in 2-block radius
# Cooldown: 18s

scoreboard players set @s ec.jv_cd 18

# Affinity boost
tag @s add ec.aff_attacker
scoreboard players set #aff_base ec.temp 1
function evercraft:affinity/boost_damage
data modify storage evercraft:affinity temp.damage_type set value "minecraft:player_explosion"

execute at @s as @e[type=!player,distance=..2,limit=5,sort=nearest] run function evercraft:affinity/deal_damage_typed with storage evercraft:affinity temp
execute at @s run particle explosion ~ ~0.5 ~ 0.5 0.3 0.5 0.1 5
playsound minecraft:entity.generic.explode player @a[distance=..15] ~ ~ ~ 0.6 1.2
tag @s remove ec.aff_attacker

scoreboard players add @s ach.weapon_abilities 1
