# Best Buddy Combat — Attack
# @s = hostile mob being attacked
# Buddy entity is the nearest ec.bd_best

# Base wolf damage: 4 (same as tamed wolf)
damage @s 4 minecraft:mob_attack by @e[tag=ec.bd_best,type=#evercraft:tameable_companions,limit=1,sort=nearest]

# Visual feedback
particle minecraft:damage_indicator ~ ~0.5 ~ 0.2 0.2 0.2 0 3
playsound minecraft:entity.player.attack.strong hostile @a[distance=..16] ~ ~ ~ 0.6 1.2

# Set attack cooldown on owner (1.5 seconds = wolf attack speed)
# Find owner via nearby players with best buddy active
execute as @a[distance=..32,scores={ec.bd_best_active=1}] run scoreboard players set @s ec.bd_best_atk_cd 2

# Check if best buddy has a weapon equipped — apply weapon bonus
execute as @a[distance=..32,scores={ec.bd_best_active=1}] run function evercraft:buddy/best/combat/apply_weapon
