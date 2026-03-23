# Wyrmfire Cleave — AoE burst centered on hit target
# Run as the hit entity, at the hit entity

# Set primary target on fire (8 seconds)
data merge entity @s {Fire:160s}

# Damage + ignite nearby enemies in 3 block radius (uses damage command to avoid healing undead)
execute as @e[type=!player,type=!item,type=!experience_orb,distance=..3] run damage @s 4 minecraft:on_fire
execute as @e[type=!player,distance=..3,nbt=!{HurtTime:10s}] run data merge entity @s {Fire:100s}

# Fire burst particles centered on target
particle flame ~ ~0.5 ~ 1.0 0.3 1.0 0.04 30
particle lava ~ ~0.5 ~ 0.8 0.3 0.8 0 8
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.4 1.5
