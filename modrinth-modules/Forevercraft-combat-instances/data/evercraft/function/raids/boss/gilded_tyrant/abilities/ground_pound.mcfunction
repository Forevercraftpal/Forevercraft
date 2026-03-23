# Gilded Tyrant — Ground Pound Shockwave
# Jump + slam creating AoE damage with heavy knockback

# Warning
tellraw @a[tag=ec.rd_participant] [{"text":"  ⚠ ","color":"red"},{"text":"The Tyrant slams the ground!","color":"gold"}]

# Shockwave damage — 3-block radius, 8 damage
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run execute as @a[tag=ec.rd_participant,distance=..3] run damage @s 8 minecraft:mob_attack by @e[type=!player,tag=ec.rd_boss,limit=1]

# Knockback effect on hit players (push away from boss)
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s as @a[tag=ec.rd_participant,distance=..3] at @s facing entity @e[type=!player,tag=ec.rd_boss,limit=1] feet run tp @s ^ ^ ^-2

# VFX — ground eruption
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:explosion ~ ~0.5 ~ 2 0.3 2 0.1 5
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[1.0,0.84,0.0],scale:2.0} ~ ~0.2 ~ 3 0.1 3 0.05 30
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.generic.explode hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.5
