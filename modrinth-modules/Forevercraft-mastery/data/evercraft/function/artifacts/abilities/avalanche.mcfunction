# Avalanche — Frost Shovel
# On hit: AoE knockback + frost damage to nearby enemies
advancement revoke @s only evercraft:artifacts/abilities/avalanche_trigger
execute at @s as @e[type=!player,type=!item,distance=..4,limit=5,sort=nearest] run damage @s 3 minecraft:freeze
execute at @s run effect give @e[type=!player,type=!item,distance=..4,limit=5,sort=nearest,nbt={HurtTime:10s}] slowness 2 0 false
execute at @s run particle block{block_state:"minecraft:packed_ice"} ~ ~1 ~ 2 1 2 0.5 30
playsound minecraft:block.glass.break player @s ~ ~ ~ 1 0.4

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
