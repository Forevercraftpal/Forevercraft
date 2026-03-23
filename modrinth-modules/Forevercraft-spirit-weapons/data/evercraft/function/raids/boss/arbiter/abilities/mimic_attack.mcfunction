# Arbiter — Mimic Attack
# Boss copies player's attack pattern at double damage
# Targets the last player who hit the boss

# Dash toward nearest player
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s facing entity @a[tag=ec.rd_participant,sort=nearest,limit=1] feet run tp @s ^ ^ ^1.0

# Double damage melee on nearby players (mimic counter)
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run execute as @a[tag=ec.rd_participant,distance=..3] run damage @s 14 minecraft:mob_attack by @e[type=!player,tag=ec.rd_boss,limit=1]

# Warning + VFX
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s if entity @a[tag=ec.rd_participant,distance=..3] run tellraw @a[tag=ec.rd_participant] [{"text":"  "},{"text":"The Arbiter mirrors your strike!","color":"aqua","italic":true}]
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:sweep_attack ~ ~1 ~ 1 0.5 1 0 3
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.player.attack.sweep hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.6
