# Void Architect — Teleport to Random Position
# Boss blinks to a random offset from center, leaving a particle trail

# VFX at departure
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.5 1 0.5 0.1 30
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.enderman.teleport hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.8

# Teleport to a random position near center (spreadplayers from center marker)
execute at @e[type=marker,tag=rd.center,limit=1] run spreadplayers ~ ~ 5 15 false @e[type=!player,tag=ec.rd_boss,limit=1]

# VFX at arrival
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.5 1 0.5 0.1 30
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:end_rod ~ ~1 ~ 0.3 0.5 0.3 0.05 10
