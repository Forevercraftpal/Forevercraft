# Wyrmcleaver — Dragonfire Proc
# 15% passive: ignite target for 3 seconds

# Apply fire to hit entity
execute on target run data merge entity @s {Fire:60s}

# VFX on target
execute on target at @s run particle flame ~ ~1 ~ 0.3 0.5 0.3 0.08 12
execute on target at @s run particle lava ~ ~0.5 ~ 0.2 0.2 0.2 0.05 3

# SFX
execute on target at @s run playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.5 1.4

# Spirit tier: 25% instead and longer fire (5 seconds)
execute if score @s ec.sp_tier matches 7 on target run data merge entity @s {Fire:100s}
