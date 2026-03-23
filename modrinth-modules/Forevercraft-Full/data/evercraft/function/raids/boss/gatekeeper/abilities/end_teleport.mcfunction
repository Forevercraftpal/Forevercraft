# Gatekeeper — End Teleport (End dimension effect)
# Boss teleports rapidly during End phase

# Teleport boss to random position near center
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @e[type=marker,tag=rd.center,limit=1] run spreadplayers ~ ~ 3 12 false @s

# VFX
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 1 15
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.enderman.teleport hostile @a[tag=ec.rd_participant] ~ ~ ~ 0.8 1.0
