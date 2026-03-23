# The Mossheart Warden — Fissure Attack
# Line of damage from boss toward a random player
# Players in safe zones (near former core positions) are immune

# Pick a random target
tag @a[tag=ec.rd_participant,sort=random,limit=1] add ec.rd_mw_fissure_target

# Damage all participants NOT in safe zones (within 2 blocks of a safe zone marker)
execute as @a[tag=ec.rd_participant] at @s unless entity @e[tag=ec.rd_mw_safe_zone,distance=..2] run damage @s 8 minecraft:mob_attack by @e[type=iron_golem,tag=ec.rd_boss,limit=1]

# VFX: fissure line from boss toward target
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.2,0.4,0.1],scale:2.5} ^ ^0.3 ^2 0.5 0.1 3 0 20
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.2,0.4,0.1],scale:2.5} ^ ^0.3 ^5 0.5 0.1 3 0 20
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.2,0.4,0.1],scale:2.5} ^ ^0.3 ^8 0.5 0.1 3 0 20
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.warden.sonic_boom master @a[tag=ec.rd_participant] ~ ~ ~ 0.8 0.6

# Clean up
tag @a[tag=ec.rd_mw_fissure_target] remove ec.rd_mw_fissure_target
