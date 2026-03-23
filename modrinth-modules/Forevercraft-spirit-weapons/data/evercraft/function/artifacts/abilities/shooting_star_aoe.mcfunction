# Shooting Star — Falling Star AoE
# Runs as the hit target, at the hit target's position
# Deals 8 damage to all nearby mobs

# Falling star visual
particle firework ~ ~3 ~ 0 0 0 0 1
particle explosion ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle end_rod ~ ~2 ~ 1 2 1 0.1 30

# AoE damage to nearby mobs (not the target itself — they already took arrow damage)
execute as @e[type=!player,type=!item,distance=..4,limit=5,sort=nearest] unless entity @s[nbt={HurtTime:10s}] run damage @s 8 evercraft:bonus_strike

# Sound
playsound minecraft:entity.firework_rocket.blast player @a[distance=..32] ~ ~ ~ 1 0.5
playsound minecraft:entity.lightning_bolt.impact player @a[distance=..32] ~ ~ ~ 0.5 1.5
