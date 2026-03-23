# Gatekeeper — Dash Attack
# Boss dashes 8 blocks toward nearest player, leaving ender particle trail

# Dash in 4 steps (2 blocks each)
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s facing entity @a[tag=ec.rd_participant,sort=nearest,limit=1] feet run tp @s ^ ^ ^2
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:portal ~ ~1 ~ 0.2 0.5 0.2 0.5 5
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s facing entity @a[tag=ec.rd_participant,sort=nearest,limit=1] feet run tp @s ^ ^ ^2
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:portal ~ ~1 ~ 0.2 0.5 0.2 0.5 5
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s facing entity @a[tag=ec.rd_participant,sort=nearest,limit=1] feet run tp @s ^ ^ ^2
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:portal ~ ~1 ~ 0.2 0.5 0.2 0.5 5
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s facing entity @a[tag=ec.rd_participant,sort=nearest,limit=1] feet run tp @s ^ ^ ^2

# Damage at destination
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run execute as @a[tag=ec.rd_participant,distance=..2] run damage @s 8 minecraft:mob_attack by @e[type=!player,tag=ec.rd_boss,limit=1]

# VFX
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.enderman.teleport hostile @a[tag=ec.rd_participant] ~ ~ ~ 0.8 1.2
