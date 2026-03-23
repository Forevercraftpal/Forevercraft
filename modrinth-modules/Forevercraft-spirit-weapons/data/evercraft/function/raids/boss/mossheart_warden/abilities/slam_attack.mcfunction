# The Mossheart Warden — Slam Attack
# AoE ground pound: 5-block radius, 10 damage

execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] at @s run execute as @a[tag=ec.rd_participant,distance=..5] run damage @s 10 minecraft:mob_attack by @p[sort=nearest,limit=1]

# VFX
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.3,0.5,0.2],scale:2.0} ~ ~0.5 ~ 5 0.3 5 0 40
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] at @s run particle minecraft:explosion ~ ~0.5 ~ 2 0.3 2 0.3 5
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.iron_golem.attack master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.4
