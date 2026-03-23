# Critical Explosion — Worldbreaker + Aftershock Enhancement
# Base: Explosion at target location + AoE damage (no terrain destruction)
# Enhancement: Targets hit by explosion get Levitation I (0.5s) — launched up then take fall damage
advancement revoke @s only evercraft:artifacts/abilities/critical_explosion_trigger

# AoE damage centered on hit target (safe — no block damage)
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] as @e[type=!player,type=!item,type=!experience_orb,distance=..4] run damage @s 5 minecraft:explosion

# Aftershock: Launch victims upward briefly
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] as @e[type=!player,type=!item,type=!experience_orb,distance=..4] run effect give @s levitation 1 0 false

# Visual/audio feedback
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run particle explosion_emitter ~ ~1 ~ 0 0 0 0 1
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run particle cloud ~ ~0.5 ~ 0.8 0.2 0.8 0.05 15
playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.8 1

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
