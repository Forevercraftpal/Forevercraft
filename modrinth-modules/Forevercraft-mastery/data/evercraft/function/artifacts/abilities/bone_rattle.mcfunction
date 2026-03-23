# Bone Rattle — Bone Slingshot (Common)
# Ranged hit: target and all mobs within 3 blocks get Weakness I (3s)
# The skeletal rattle startles nearby groups

advancement revoke @s only evercraft:artifacts/abilities/bone_rattle_trigger

# Apply Weakness I to target and all nearby mobs
execute at @s as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run effect give @e[type=!player,distance=..3] weakness 3 0 false

# Visual + audio feedback at target location
execute at @s as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle ash ~ ~1 ~ 0.5 0.5 0.5 0.1 20
execute at @s as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.skeleton.ambient hostile @a[distance=..16] ~ ~ ~ 0.8 0.6

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
