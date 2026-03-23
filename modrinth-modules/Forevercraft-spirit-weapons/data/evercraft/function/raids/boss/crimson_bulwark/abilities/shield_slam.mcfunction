# The Crimson Bulwark — Shield Slam
# Shockwave: 4-block radius, 8 damage

execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run execute as @a[tag=ec.rd_participant,distance=..4] run damage @s 8 minecraft:mob_attack by @p[sort=nearest,limit=1]

# VFX
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.8,0.1,0.1],scale:2.0} ~ ~0.5 ~ 4 0.3 4 0 40
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run particle minecraft:explosion ~ ~0.5 ~ 2 0.3 2 0.3 4
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:item.shield.block master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.3
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.iron_golem.attack master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5
