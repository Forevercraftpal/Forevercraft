# Gilded Tyrant — Charge Attack
# Boss charges toward nearest player with Speed II burst

# Warning
tellraw @a[tag=ec.rd_participant] [{"text":"  ⚠ ","color":"gold"},{"text":"The Tyrant charges!","color":"yellow"}]

# Apply Speed II for 2 seconds (charge duration)
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect give @s speed 2 1 true

# Teleport toward nearest player in steps (simulated charge)
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s facing entity @a[tag=ec.rd_participant,sort=nearest,limit=1] feet run tp @s ^ ^ ^1.5

# Damage players caught in the charge path (2-block radius)
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run execute as @a[tag=ec.rd_participant,distance=..2] run damage @s 10 minecraft:mob_attack by @e[type=!player,tag=ec.rd_boss,limit=1]

# VFX
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[1.0,0.84,0.0],scale:1.5} ~ ~0.5 ~ 0.5 0.3 0.5 0.1 10
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.ravager.step hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.6
