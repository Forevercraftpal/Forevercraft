# The Deepcrawler — Emerge From Wall
# Teleports to a random wall position and deals AoE damage

scoreboard players set #rd_dc_above ec.var 1

# Pick a random wall position
execute at @e[tag=ec.rd_dc_wall_pos,sort=random,limit=1] as @e[type=silverfish,tag=ec.rd_boss,limit=1] run tp @s ~ ~ ~

# Remove invisibility and invulnerability
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run effect clear @s invisibility
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run effect clear @s resistance

# Emergence AoE: 8 damage + knockback in 4-block radius
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run execute as @a[tag=ec.rd_participant,distance=..4] run damage @s 8 minecraft:mob_attack by @p[sort=nearest,limit=1]

# VFX: dramatic emergence
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run particle minecraft:explosion ~ ~1 ~ 2 1 2 0.5 5
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.5,0.4,0.3],scale:2.0} ~ ~1 ~ 3 1 3 0 50
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.warden.emerge master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.8
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:block.stone.break master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.5
