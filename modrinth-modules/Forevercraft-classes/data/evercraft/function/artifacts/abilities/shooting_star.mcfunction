# Shooting Star — Mythical Bow
# On Hit: Dream trail particles + Levitation (2s)
# 25% chance: Falling star AoE (8 dmg to nearby mobs)
# NOTE: Uses distance=..48 + sort=nearest to find the arrow's target.
# Extremely rare false positive if another mob within range has HurtTime:10s same tick.

# Revoke for re-trigger
advancement revoke @s only evercraft:artifacts/abilities/shooting_star_trigger

# Apply Levitation to hit target (2s)
execute at @s as @e[type=!player,type=!item,type=!#minecraft:arrows,distance=..48,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s levitation 2 0 false

# Dream trail particles at target
execute at @s as @e[type=!player,type=!item,type=!#minecraft:arrows,distance=..48,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.05 15

# 25% chance — Falling Star AoE
execute store result score @s ec.artifact_roll run random value 1..4
execute if score @s ec.artifact_roll matches 1 at @s as @e[type=!player,type=!item,type=!#minecraft:arrows,distance=..48,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run function evercraft:artifacts/abilities/shooting_star_aoe

# Visual/audio feedback
playsound minecraft:entity.firework_rocket.launch player @s ~ ~ ~ 0.5 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
